package com.grgr.service;

import java.util.Map;

import com.grgr.dto.QnaBoard;
import com.grgr.util.SearchCondition;

public interface QnaBoardService {
	int getQnaCount(SearchCondition searchCondition);
	int addQnaBoard(QnaBoard qnaBoard);
	void modifyQnaBoard(QnaBoard qnaBoard);
	void removeQnaBoard(int qnaBno, int uno);
	int riseQnaViewCnt(int qnaBno);
	QnaBoard getQnaBoard(int qnaBno);
	Integer prevQnaBno(SearchCondition searchCondition, int qnaBno);
	Integer nextQnaBno(SearchCondition searchCondition, int qnaBno);
	Map<String, Object> getQnaBoardList(SearchCondition searchCondition);
}
