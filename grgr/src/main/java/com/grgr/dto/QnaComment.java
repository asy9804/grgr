package com.grgr.dto;

import lombok.Data;

/*
이름                  널?       유형             
------------------- -------- -------------- 
QNA_COMMENT_NO      NOT NULL NUMBER         
QNA_UNO                      NUMBER         
QNA_BNO                      NUMBER         
QNA_COMMENT_CONTENT NOT NULL VARCHAR2(1000) 
QNA_COMMENT_GROUP            NUMBER         
QNA_COMMENT_DEPT             NUMBER         
QNA_COMMENT_ORDER            NUMBER         
QNA_REGDATE                  DATE           
QNA_UPDATE                   DATE           
QNA_UPDATE_UNO               NUMBER         

    
create sequence qna_comment_no_seq;
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
	private String qna_regdate;
	private String qna_update;
	private int qna_update_uno;
}
