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
	int selectQnaBoardCount();
	Integer selectPrevInfoBno(int qnaBno);
	Integer selectNextInfoBno(int qnaBno);
	List<QnaBoard> selectQnaBoardList(Map<String, Object> map);
}
