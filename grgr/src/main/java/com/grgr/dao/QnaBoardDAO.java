package com.grgr.dao;

import java.util.List;
import java.util.Map;

import com.grgr.dto.QnaBoard;

public interface QnaBoardDAO {
	int insertQnaBoard(QnaBoard qnaBoard);
	int updateQnaBoard(QnaBoard qnaBoard);
	//int deleteQnaBoard(int qna_bno);
	int deleteQnaBoard(int qnaBno, int uno);
	QnaBoard selectQnaBoard(int qna_bno);
	int selectQnaBoardCount();
	List<QnaBoard> selectQnaBoardList(Map<String, Object> map);
}
