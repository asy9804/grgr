package com.grgr.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.grgr.dto.Userinfo;
import com.grgr.mapper.UserinfoMapper;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class UserinfoDAOImpl implements UserinfoDAO {
	private final SqlSession sqlSession;

	@Override
	public int insertUserinfo(Userinfo userinfo) {
		return sqlSession.getMapper(UserinfoMapper.class).insertUserinfo(userinfo);
	}

	@Override
	public int updateUserinfo(Userinfo userinfo) {
		return sqlSession.getMapper(UserinfoMapper.class).updateUserinfo(userinfo);
	}

	@Override
	public int deleteUserinfo(int uno) {
		return sqlSession.getMapper(UserinfoMapper.class).deleteUserinfo(uno);
	}

	@Override
	public Userinfo selectUserinfo(int uno) {
		return sqlSession.getMapper(UserinfoMapper.class).selectUserinfo(uno);
	}

	@Override
	public int selectUserinfoCount() {
		return sqlSession.getMapper(UserinfoMapper.class).selectUserinfoCount();
	}

	@Override
	public List<Userinfo> selectUserinfoList() {
		return sqlSession.getMapper(UserinfoMapper.class).selectUserinfoList();
	}
	
	
}
