package com.grgr.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.grgr.dto.QnaBoard;
import com.grgr.mapper.QnaBoardMapper;

import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class QnaBoardDAOImpl implements QnaBoardDAO {
	private final SqlSession sqlSession;

	@Override
	public int insertQnaBoard(QnaBoard qnaBoard) {
		return sqlSession.getMapper(QnaBoardMapper.class).insertQnaBoard(qnaBoard);
	}

	@Override
	public int updateQnaBoard(QnaBoard qnaBoard) {
		return sqlSession.getMapper(QnaBoardMapper.class).updateQnaBoard(qnaBoard);
	}

	@Override
	public int deleteQnaBoard(int qna_bno) {
		return sqlSession.getMapper(QnaBoardMapper.class).deleteQnaBoard(qna_bno);
	}

	@Override
	public QnaBoard selectQnaBoard(int qna_bno) {
		return sqlSession.getMapper(QnaBoardMapper.class).selectQnaBoard(qna_bno);
	}

	@Override
	public List<QnaBoard> selectQnaBoardList(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
}
