package com.grgr.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.grgr.dto.QnaBoard;

public interface QnaBoardMapper {
	int insertQnaBoard(QnaBoard qnaBoard);
	int updateQnaBoard(QnaBoard qnaBoard);
//	int deleteQnaBoard(int qnaBno);
	int deleteQnaBoard(@Param("qnaBno") int qnaBno,@Param("uno") int uno);
	QnaBoard selectQnaBoard(int qnaBno);
	Integer selectPrevQnaBno(int qnaBno);
	Integer selectNextQnaBno(int qnaBno);
	int selectQnaBoardCount();
	List<QnaBoard> selectQnaBoardList(Map<String, Object> map);
}
