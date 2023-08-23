package com.grgr.service;

import java.util.Map;

import com.grgr.dto.QnaBoard;

public interface QnaBoardService {
	void addQnaBoard(QnaBoard qnaBoard);
	void modifyQnaBoard(QnaBoard qnaBoard);
	void removeQnaBoard(int qnaBno, int uno);
	QnaBoard getQnaBoard(int qnaBno);
	Map<String, Object> getQnaBoardList(int pageNum);
	
}
