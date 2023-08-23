package com.grgr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.grgr.service.QnaBoardService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/qna")
@RequiredArgsConstructor
@Slf4j
public class QnaBoardController {
	private final QnaBoardService qnaBoardService;
	
	//게시글 목록 요청
	@RequestMapping("/boardlist")
	public String qnaBoardList() {
		log.info("QnaBoardController() 클래스의 qnaBoardList() 메소드 호출");
		return "/board_list";
	}
	
	
	
	
}
