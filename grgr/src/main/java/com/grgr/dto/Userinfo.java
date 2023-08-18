package com.grgr.dto;

import lombok.Data;

/*
이름              널?       유형           
--------------- -------- ------------ 
UNO             NOT NULL NUMBER       
USER_NAME       NOT NULL VARCHAR2(10) 
NICKNAME                 VARCHAR2(30) 
USER_PW         NOT NULL VARCHAR2(30) 
USER_ID                  VARCHAR2(30) 
PHONE                    VARCHAR2(30) 
EMAIL                    VARCHAR2(30) 
USER_STATUS              NUMBER       
ACTIVE                   NUMBER       
POINT                    NUMBER       
BUSINESS_NO              VARCHAR2(30) 
LAST_LOGIN               DATE         
REGDATE                  DATE         
USER_UPDATE              DATE         
USER_UPDATE_UNO          NUMBER       

create sequence uno_seq;
*/

@Data
public class Userinfo {
	private int uno;
	private String user_name;
	private String nickname;
	private String user_pw;
	private String user_id;
	private String phone;
	private String email;
	private int user_status;
	private int active;
	private int point;
	private String business_no;
	private String last_login;
	private String regdate;
	private String user_update;
	private int user_update_uno;
}
