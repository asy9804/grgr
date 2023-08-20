package com.grgr.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grgr.service.QnaBoardService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/qnaboard")
@RequiredArgsConstructor
public class QnaBoardController {
	private final QnaBoardService qnaBoardService;
	
	//게시글 목록 검색 >> GET 요청
	@GetMapping
	public Map<String, Object> qnaBoardList(@RequestParam(defaultValue = "1") int pageNum) {
		return qnaBoardService.getQnaBoardList(pageNum);
	}
	
	
}
