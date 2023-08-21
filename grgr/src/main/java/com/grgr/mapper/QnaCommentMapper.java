package com.grgr.mapper;

import java.util.List;
import java.util.Map;

import com.grgr.dto.QnaComment;

public interface QnaCommentMapper {
	int insertQnaComment(QnaComment qnaBoard);
	int updateQnaComment(QnaComment qnaBoard);
	int deleteQnaComment(int qna_comment_bno);
	QnaComment selectQnaComment(int qna_comment_bno);
	int selectQnaCommentCount();
	List<QnaComment> selectQnaCommentList(Map<String, Object> map);
}
