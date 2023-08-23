package com.grgr.dto;

import lombok.Data;

/*
이름             널?       유형             
-------------- -------- -------------- 
QNA_BNO        NOT NULL NUMBER         
UNO               		NUMBER         
QNA_KEYWORD             VARCHAR2(20)         
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
	private int qnaBno;
	private int uno;
	private String qnakeyword;
	private String qnaTitle;
	private String qnaContent;
	private int qnaBlindstate;
	private String qnaRegdate;
	private String qnaModifydate;
	private int qnaUpdateUno;
}
