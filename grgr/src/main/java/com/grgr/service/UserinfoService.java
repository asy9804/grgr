package com.grgr.service;

import java.util.Map;

import com.grgr.dto.Userinfo;

public interface UserinfoService {
	void addUserinfo(Userinfo userinfo);
	void modifyUserinfo(Userinfo userinfo);
	void removeUserinfo(int uno);
	Userinfo getUserinfo(int uno);
	Map<String, Object> getUserinfoList();
}
