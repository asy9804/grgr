package com.grgr.mapper;

import java.util.List;

import com.grgr.dto.Userinfo;

public interface UserinfoMapper {
	int insertUserinfo(Userinfo userinfo);
	int updateUserinfo(Userinfo userinfo);
	int deleteUserinfo(int uno);
	Userinfo selectUserinfo(int uno);
	int selectUserinfoCount();
	List<Userinfo> selectUserinfoList();
}
