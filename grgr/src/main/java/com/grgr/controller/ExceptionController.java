package com.grgr.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.grgr.exception.WriteNullException;

@ControllerAdvice
public class ExceptionController {
	 @ExceptionHandler(WriteNullException.class)
	    public ModelAndView WriteNullException(WriteNullException e) {
	        ModelAndView mav = new ModelAndView("board/qna_write"); // error.jsp 페이지를 띄움
	        mav.addObject("msg", e.getMessage());
	        return mav;
	    }



}
