package com.grgr.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.grgr.dto.QnaBoard;
import com.grgr.exception.WriteNullException;
import com.grgr.service.QnaBoardService;
import com.grgr.util.SearchCondition;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/qnaboard")
@RequiredArgsConstructor
@Slf4j
public class QnaBoardController {
	private final QnaBoardService qnaBoardService;
	
	/*
	//게시글 목록 요청
	@RequestMapping("/list")
	public String qnaBoardList() {
		log.info("QnaBoardController() 클래스의 qnaBoardList() 메소드 호출");
		return "board/qna_boardlist";
	}
	*/
	
	// 글목록 (전체 & 검색 조건)
	@RequestMapping("/list")
	public String qnaBoardList(SearchCondition searchCondition, Model model) {
		log.info("QnaBoardController() 클래스의 qnaBoardList() 메소드 호출");
		Map<String, Object> result = qnaBoardService.getQnaBoardList(searchCondition);
		model.addAttribute("qnaBoardList", result.get("qnaBoardList"));
		model.addAttribute("pager", result.get("pager"));
		return "board/qna_boardlist";
	}
	
	// 선택 게시글 조회 -> 읽어올때, 글번호로 사진정보를 select해서 출력할것
	@GetMapping("/read")
	public String qnaBoardRead(@RequestParam int qnaBno, SearchCondition searchCondition, Model model) {
		try {
			Integer prevQnaBno = qnaBoardService.prevQnaBno(searchCondition, qnaBno);
			Integer nextQnaBno = qnaBoardService.nextQnaBno(searchCondition, qnaBno);

			model.addAttribute("nextInfoBno", nextQnaBno);
			model.addAttribute("prevQnaBno", prevQnaBno);
			model.addAttribute("isLastPost", nextQnaBno == null);
			model.addAttribute("isFirstPost", prevQnaBno == null);
			model.addAttribute("searchCondition", searchCondition); // 검색 조건 추가
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "board/qna_board";
	}
	
	// 글쓰기 페이지 요청
	@GetMapping(value = "/write")
	public String qnaBoardWrite(Model model) {
		model.addAttribute("mode", "write");
		return "board/qna_write";
	}
		
	// 글 작성 및 제출
	@PostMapping(value = "/write")
	public String infoBoardWrite(QnaBoard qnaBoard) throws WriteNullException {
		int newBno = qnaBoardService.addQnaBoard(qnaBoard);

		return "redirect:/qnaboard/read?qnaBno=" + newBno;
	}
		
	// 글 수정페이지 요청
	@GetMapping("/modify")
	public String qnaBoardModify(int qnaBno, SearchCondition searchCondition, Model model) {
		model.addAttribute("searchCondition", searchCondition);
		return "board/qna_modify";
	}
		
	// 글 수정 제출
	@PostMapping(value="/modify")
	public String qnaBoardModify(QnaBoard qnaBoard, RedirectAttributes rattr) throws WriteNullException{
		//int uno = (int) session.getAttribute("uno");
		if (qnaBoard.getQnaTitle() == null || qnaBoard.getQnaContent() == null) {
			throw new WriteNullException("제목 또는 내용이 비어있습니다.");
		}
		
		qnaBoardService.modifyQnaBoard(qnaBoard); 
		return "redirect:/qnaboard/read?qnaBno="+qnaBoard.getQnaBno();
	}
		
	// 글 제거
	@RequestMapping("/remove")
	public String qnaBoardRemove(@RequestParam Integer qnaBno, @RequestParam Integer uno, int pageNum,
			RedirectAttributes rattr) {
		qnaBoardService.removeQnaBoard(qnaBno, uno);
		rattr.addFlashAttribute("pageNum", pageNum);
		return "redirect:/qnaboard/list?pageNum=" + pageNum;
	}
}
