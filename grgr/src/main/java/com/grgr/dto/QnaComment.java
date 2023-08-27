package com.grgr.dto;

import lombok.Data;

/*
이름                     널?       유형             
---------------------- -------- -------------- 
QNA_COMMENT_NO         NOT NULL NUMBER         
UNO                    NOT NULL NUMBER         
QNA_BNO                NOT NULL NUMBER         
QNA_COMMENT_CONTENT             VARCHAR2(1000) 
QNA_COMMENT_GROUP               NUMBER     		- 모댓글이 같은 댓글들은 같은 그룹번호를 가짐       
QNA_COMMENT_BLINDSTATE NOT NULL NUMBER  		- 1. 공개, 2.비공개, 3.삭제       
QNA_COMMENT_REGDATE             DATE           
QNA_COMMENT_UPDATE              DATE           
QNA_COMMENT_UPDATE_UNO          NUMBER         

 */

@Data
public class QnaComment {
	private int qna_comment_no;
	private int qna_uno;
	private int qna_bno;
	private String qna_comment_content;
	private int qna_comment_group;
	private int qna_comment_dept;
	private int qna_comment_order;
	private String qna_comment_regdate;
	private String qna_comment_update;
	private int qna_comment_update_uno;
}
