package com.grgr.mapper;

import java.util.List;
import java.util.Map;

import com.grgr.dto.QnaBoard;

public interface QnaBoardMapper {
	int insertQnaBoard(QnaBoard qnaBoard);
	int updateQnaBoard(QnaBoard qnaBoard);
	int deleteQnaBoard(int qnaBno);
	QnaBoard selectQnaBoard(int qnaBno);
	int selectQnaBoardCount();
	List<QnaBoard> selectQnaBoardList(Map<String, Object> map);
}
