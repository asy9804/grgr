package com.grgr.dao;

import java.util.List;
import java.util.Map;

import com.grgr.dto.QnaBoard;

public interface QnaBoardDAO {
	int insertQnaBoard(QnaBoard qnaBoard);
	int updateQnaBoard(QnaBoard qnaBoard);
	int deleteQnaBoard(int qna_bno);
	QnaBoard selectQnaBoard(int qna_bno);
	List<QnaBoard> selectQnaBoardList(Map<String, Object> map);
}
