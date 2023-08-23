package com.grgr.dto;

import lombok.Data;

/*
이름             널?       유형             
-------------- -------- -------------- 
QNA_BNO        NOT NULL NUMBER         
QNA_UNO                 NUMBER         
QNA_KEYWORD             NUMBER         
QNA_TITLE      NOT NULL VARCHAR2(100)  
QNA_CONTENT    NOT NULL VARCHAR2(2000) 
QNA_BLINDSTATE          NUMBER         
QNA_REGDATE             DATE           
QNA_MODIFYDATE          DATE           
QNA_UPDATE_UNO          NUMBER         

create sequence qna_bno_seq;
 */

@Data
public class QnaBoard {
	private int qna_bno;
	private int uno;
	private int keyword;
	private String qna_title;
	private String qna_content;
	private int qna_blindstate;
	private String qna_regdate;
	private String qna_modifydate;
	private int qna_update_uno;
}
