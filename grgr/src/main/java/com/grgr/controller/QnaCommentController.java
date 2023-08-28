package com.grgr.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.HtmlUtils;

import com.grgr.dto.QnaComment;
import com.grgr.exception.CommentBlindException;
import com.grgr.exception.CommentInsertException;
import com.grgr.exception.CommentModifyException;
import com.grgr.exception.CommentRemoveException;
import com.grgr.exception.NoCommentsException;
import com.grgr.service.QnaCommentService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/qnacomment")
@RequiredArgsConstructor
public class QnaCommentController {
	private final QnaCommentService qnaCommentService;
	
	//댓글 조회 (GET 사용)
	@GetMapping("/list/{qnaBno}")
	public Map<String, Object> commentList(
	    @PathVariable int qnaBno,
	    @RequestParam(defaultValue = "1") int pageNum,
	    Integer loginUno, Integer loginUserStatus /*HttpSession session*/
	) throws NoCommentsException {
	    
	    //int loginUno = (int) session.getAttribute("uno");
		//int loginUserStatus = (int)session.getAttribute("loginUserStatus"); 
	    loginUno = 1;
	    loginUserStatus=1;
	    
	    Map<String, Object> resultMap = qnaCommentService.getQnaCommentList(qnaBno, pageNum);
	    resultMap.put("loginUno", loginUno); // 로그인한 사용자의 uno 값을 결과 맵에 포함
	    resultMap.put("loginUserStatus", loginUserStatus);
	    
	    return resultMap;
	}
	
	//댓글 삽입(POST 사용)
	@PostMapping("/write")
	public ResponseEntity<String> qnaCommentAdd(@RequestBody QnaComment qnaComment,int qnaBno, Integer loginUno, HttpSession session) throws CommentInsertException {
		//int loginUno = (int)session.getAttribute("uno"); 
		loginUno = 2; //로그인 연결시 위의 주석으로 변경
		qnaComment.setUno(loginUno);
		qnaComment.setQnaBno(qnaBno);
		qnaCommentService.addQnaComment(qnaComment);
		
		return new ResponseEntity<String>("WRT_OK",HttpStatus.OK);
	}

	//댓글 수정(PUT 사용)
	@PatchMapping("/modify/{qnaCommentNo}")
	public ResponseEntity<String> qnaCommentModify(@PathVariable int qnaCommentNo, @RequestBody QnaComment qnaComment, int uno, HttpSession session) 
			throws CommentModifyException  {
		//int uno = (int)session.getAttribute("uno"); 
		uno = 2; //로그인 연결시 위의 주석으로 변경
		qnaComment.setUno(uno);
		qnaComment.setQnaCommentContent(HtmlUtils.htmlEscape(qnaComment.getQnaCommentContent()));
		qnaCommentService.modifyQnaComment(qnaComment);
		
		return new ResponseEntity<String>("MOD_OK",HttpStatus.OK);
	}
	
	//댓글 삭제(본인)
	@PutMapping("/remove/{qnaCommentNo}")
	public ResponseEntity<String> qnaCommentRemove(@PathVariable int qnaCommentNo, Integer loginUno, HttpSession session ) throws CommentRemoveException {
		//int loginUno = (int)session.getAttribute("uno"); 
		loginUno = 2; //로그인 연결시 위의 주석으로 변경
		qnaCommentService.removeQnaComment(qnaCommentNo, loginUno);
		
		return new ResponseEntity<String>("DEL_OK",HttpStatus.OK);
		
	}
	
	//댓글 숨김
	@PutMapping("/hide/{qnaCommentNo}")
	public ResponseEntity<String> qnaCommentBlind(@PathVariable int qnaCommentNo, Integer loginUno, Integer loginUserStatus, HttpSession session ) throws CommentBlindException {
		//int loginUno = (int)session.getAttribute("loginUserStatus"); 
		//int loginUserStatus = (int)session.getAttribute("loginUserStatus"); 
		loginUno = 1;
		loginUserStatus = 1; //로그인 연결시 위의 주석으로 변경
		qnaCommentService.hideQnaComment(loginUno,qnaCommentNo, loginUserStatus);
		
		return new ResponseEntity<String>("DEL_OK",HttpStatus.OK);
	}
	
	//신고
	
	
	
}