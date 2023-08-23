package com.grgr.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.grgr.dto.InfoBoard;
import com.grgr.exception.WriteNullException;
import com.grgr.service.InfoBoardService;
import com.grgr.util.SearchCondition;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/infoboard")
@RequiredArgsConstructor
public class InfoBoardController {
	private final InfoBoardService infoBoardService;
	
	@RequestMapping("/list")
	public String list(SearchCondition searchCondition, Model model) {
	    Map<String, Object> result = infoBoardService.getInfoBoardList(searchCondition);
	    model.addAttribute("infoBoardList", result.get("infoBoardList"));
	    model.addAttribute("pager", result.get("pager"));
	    return "board/info_boardlist";
	}
	
	@GetMapping("/read")
	public String infoBoardRead(@RequestParam int infoBno, SearchCondition searchCondition, Model model) {
	    try {
	        InfoBoard infoBoard = infoBoardService.getInfoBoard(infoBno);
	        Integer prevInfoBno = infoBoardService.prevInfoBno(searchCondition, infoBno);
	        Integer nextInfoBno = infoBoardService.nextInfoBno(searchCondition, infoBno);
	        
	        model.addAttribute("infoBoard", infoBoard);
	        model.addAttribute("nextInfoBno", nextInfoBno);
	        model.addAttribute("prevInfoBno", prevInfoBno);
	        model.addAttribute("isLastPost", nextInfoBno == null);
	        model.addAttribute("isFirstPost", prevInfoBno == null);
	        model.addAttribute("searchCondition", searchCondition); // 검색 조건 추가
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return "board/info_board";
	}
	
	
	//글쓰기 페이지 요청
	@GetMapping(value = "/write")
	public String infoBoardWrite(Model model) {
		return "board/info_write";
	}
	
	//글 작성 및 제출
	@PostMapping(value = "/write")
	public String infoBoardWrite(InfoBoard infoBoard) throws WriteNullException {
	    if (infoBoard.getInfoTitle() == null || infoBoard.getInfoContent() == null) {
	        throw new WriteNullException("제목 또는 내용이 비어있습니다.");
	    }
	    infoBoardService.addInfoBoard(infoBoard);
	    return "redirect:/infoboard/list";
	}
	
	//글 수정페이지 요청
	@GetMapping("/modify")
	public String infoBoardModify(int infoBno, Model model ) {
		model.addAttribute("infoBoard", infoBoardService.getInfoBoard(infoBno));
		return "board/info_modify";
	}
	
	//글 수정 제출
	@PostMapping(value="/modify")
	public String infoBoardModify(InfoBoard infoBoard, RedirectAttributes rattr) throws WriteNullException{
		//int uno = (int) session.getAttribute("uno");
		if (infoBoard.getInfoTitle() == null || infoBoard.getInfoContent() == null) {
				throw new WriteNullException("제목 또는 내용이 비어있습니다.");
		}

		infoBoardService.modifyInfoBoard(infoBoard);
		return "redirect:/infoboard/read?infoBno="+infoBoard.getInfoBno();

	}
	
	//글 제거
	@RequestMapping("/remove")
	public String infoBoardRemove(@RequestParam Integer infoBno, @RequestParam Integer uno, int pageNum, RedirectAttributes rattr) {
		infoBoardService.removeInfoBoard(infoBno, uno);
		rattr.addFlashAttribute("pageNum", pageNum);
		return "redirect:/infoboard/list?pageNum="+pageNum;
	}

	
	
}
