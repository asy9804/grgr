package com.grgr.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.HtmlUtils;

import com.grgr.dto.QnaBoard;
import com.grgr.service.QnaBoardService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/qna")
@RequiredArgsConstructor
public class QnaBoardController {
	private final QnaBoardService qnaBoardService;
	
	//게시글 목록 검색 >> GET 요청
	@GetMapping("/board_list")
	@ResponseBody
	public Map<String, Object> qnaBoardList(@RequestParam(defaultValue = "1") int pageNum) {
		return qnaBoardService.getQnaBoardList(pageNum);
	}
	
	//게시글 삽입 처리 >> POST 요청
	@PostMapping("/board_add")
	public String qnaBoardAdd(@RequestBody QnaBoard qnaBoard) {
		qnaBoard.setQna_content(HtmlUtils.htmlEscape(qnaBoard.getQna_content()));
		qnaBoardService.addQnaBoard(qnaBoard);
		return "success";
	}
	
	
}
