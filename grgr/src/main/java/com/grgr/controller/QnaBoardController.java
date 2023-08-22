package com.grgr.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.grgr.service.QnaBoardService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/qna")
@RequiredArgsConstructor
public class QnaBoardController {
	private final QnaBoardService qnaBoardService;
	
	//게시글 목록 요청
	@RequestMapping("/board_list")
	public String qnaBoardList() {
		return "/board_list";
	}
	
	
	
	
}
