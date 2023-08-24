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
	
	//글 목록 페이지 요청
	@RequestMapping("/list")
	public String list(SearchCondition searchCondition, Model model) {
		log.info("QnaBoardController() 클래스의 qnaBoardList() 메소드 호출");
		
	    Map<String, Object> result = qnaBoardService.getQnaBoardList(searchCondition);
	    
	    model.addAttribute("qnaBoardList", result.get("qnaBoardList"));
	    model.addAttribute("pager", result.get("pager"));
	    return "board/qna_boardlist";
	}
	
	@GetMapping("/read")
	public String qnaBoardRead(@RequestParam int qnaBno, SearchCondition searchCondition, Model model) {
		log.info("QnaBoardController() 클래스의 qnaBoardRead() 메소드 호출");
		try {
			// 조회수 증가 처리
			qnaBoardService.riseQnaViewCnt(qnaBno);
			
			// 글 조회 및 이전/다음 글 정보 등을 가져옴
	        QnaBoard qnaBoard = qnaBoardService.getQnaBoard(qnaBno);
	        Integer prevQnaBno = qnaBoardService.prevQnaBno(searchCondition, qnaBno);
	        Integer nextQnaBno = qnaBoardService.nextQnaBno(searchCondition, qnaBno);
	        
	        model.addAttribute("qnaBoard", qnaBoard);
	        model.addAttribute("nextQnaBno", nextQnaBno);
	        model.addAttribute("prevQnaBno", prevQnaBno);
	        model.addAttribute("isLastPost", nextQnaBno == null);
	        model.addAttribute("isFirstPost", prevQnaBno == null);
	        model.addAttribute("searchCondition", searchCondition); // 검색 조건 추가
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return "board/qna_board";
	}
	
	//글쓰기 페이지 요청
	@GetMapping(value = "/write")
	public String qnaBoardWrite(Model model) {
		log.info("QnaBoardController() 클래스의 qnaBoardWrite() 글쓰기 메소드 호출");
		return "board/qna_write";
	}
		
	//글 작성 및 제출
	@PostMapping(value = "/write")
	public String qnaBoardWrite(QnaBoard qnaBoard) throws WriteNullException {
		log.info("QnaBoardController() 클래스의 qnaBoardWrite() 작성/제출 메소드 호출");
	    if(qnaBoard.getQnaTitle() == null || qnaBoard.getQnaContent() == null) {
	        throw new WriteNullException("제목 또는 내용이 비어있습니다.");
	    }
	    qnaBoardService.addQnaBoard(qnaBoard);
	    return "redirect:/qnaboard/list";
	}
		
	//글 수정페이지 요청
	@GetMapping("/modify")
	public String qnaBoardModify(int qnaBno, Model model) {
		model.addAttribute("qnaBoard", qnaBoardService.getQnaBoard(qnaBno));
		return "board/qna_modify";
	}
		
	//글 수정 제출
	@PostMapping(value="/modify")
	public String qnaBoardModify(QnaBoard qnaBoard, RedirectAttributes rattr) throws WriteNullException{
		//int uno = (int) session.getAttribute("uno");
		if(qnaBoard.getQnaTitle() == null || qnaBoard.getQnaContent() == null) {
			throw new WriteNullException("제목 또는 내용이 비어있습니다.");
		}
		qnaBoardService.modifyQnaBoard(qnaBoard);
		return "redirect:/qnaboard/read?qnaBno="+qnaBoard.getQnaBno();
	}
		
	//글 제거
	@RequestMapping("/remove")
	public String qnaBoardRemove(@RequestParam Integer qnaBno, @RequestParam Integer uno, int pageNum, RedirectAttributes rattr) {
		qnaBoardService.removeQnaBoard(qnaBno, uno);
		rattr.addFlashAttribute("pageNum", pageNum);
		return "redirect:/qnaboard/list?pageNum="+pageNum;
	}
	
}
