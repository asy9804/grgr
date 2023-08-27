package com.grgr.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.grgr.dao.QnaBoardDAO;
import com.grgr.dto.QnaBoard;
import com.grgr.exception.WriteNullException;
import com.grgr.util.Pager;
import com.grgr.util.SearchCondition;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class QnaBoardServiceImpl implements QnaBoardService {
	private final QnaBoardDAO qnaBoardDAO;

	@Override
	public int getQnaCount(SearchCondition searchCondition) {
		Map<String, Object> searchMap = new HashMap<String, Object>();
		if (searchCondition != null) {
			if (searchCondition.getSearchType() != null && !searchCondition.getSearchType().isEmpty()) {
				searchMap.put("searchType", searchCondition.getSearchType());
			}
			if (searchCondition.getSearchKeyword() != null && !searchCondition.getSearchKeyword().isEmpty()) {
				searchMap.put("searchKeyword", searchCondition.getSearchKeyword());
			}
		}
		
		if (searchCondition.getKeyword() != null && !searchCondition.getKeyword().trim().isEmpty()) {
		    searchMap.put("qnaKeyword", searchCondition.getKeyword().trim());
		}
		return qnaBoardDAO.qnaBoardCount(searchMap);
	}

	@Override
	public int addQnaBoard(QnaBoard qnaBoard) {
		if (qnaBoard.getQnaTitle() == null || qnaBoard.getQnaContent() == null) {
	        throw new WriteNullException("제목 또는 내용이 비어있습니다.");
	    }
		qnaBoardDAO.insertQnaBoard(qnaBoard);
		
		return qnaBoard.getQnaBno();
	}

	@Override
	public void modifyQnaBoard(QnaBoard qnaBoard) {
		qnaBoardDAO.updateQnaBoard(qnaBoard);
	}

	@Override
	public void removeQnaBoard(int qnaBno, int uno) {
		qnaBoardDAO.deleteQnaBoard(qnaBno, uno);	
	}

	@Override
	public int riseQnaViewCnt(int qnaBno) {
		return qnaBoardDAO.increaseQnaViewCnt(qnaBno);
	}
	
	@Override
	public QnaBoard getQnaBoard(int qnaBno) {
		return qnaBoardDAO.selectQnaBoard(qnaBno);
	}

	@Override
	public Map<String, Object> getQnaBoardList(SearchCondition searchCondition) {
		Map<String, Object> searchMap = new HashMap<String, Object>();
		if (searchCondition != null) {
			if (searchCondition.getSearchType() != null && !searchCondition.getSearchType().isEmpty()) {
				searchMap.put("searchType", searchCondition.getSearchType());
			}
			if (searchCondition.getKeyword() != null && !searchCondition.getKeyword().isEmpty()) {
				searchMap.put("keyword", searchCondition.getKeyword());
			}
		}
		int totalBoard = qnaBoardDAO.qnaBoardCount(searchMap);
		
		Pager pager = new Pager(totalBoard, searchCondition);
		// 페이징 계산
		searchMap.put("startRow", pager.getStartRow());
		searchMap.put("endRow", pager.getEndRow());

		List<QnaBoard> qnaBoardList = qnaBoardDAO.selectQnaBoardList(searchMap);

		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("qnaBoardList", qnaBoardList);
		resultMap.put("pager", pager); // pager 객체를 반환
		resultMap.put("searchMap", searchMap);

		return resultMap;
	}
	
	@Override
	public Integer prevQnaBno(SearchCondition searchCondition, int qnaBno) {
		Map<String, Object> searchMap = new HashMap<String, Object>();
		if (searchCondition != null) {
			if (searchCondition.getSearchType() != null && !searchCondition.getSearchType().isEmpty()) {
				searchMap.put("searchType", searchCondition.getSearchType());
			}
			if (searchCondition.getKeyword() != null && !searchCondition.getKeyword().isEmpty()) {
				searchMap.put("keyword", searchCondition.getKeyword());
			}
		}
		searchMap.put("qnaBno", qnaBno);
		
		return qnaBoardDAO.selectPrevQnaBno(searchMap);
	}

	@Override
	public Integer nextQnaBno(SearchCondition searchCondition, int qnaBno) {
		Map<String, Object> searchMap = new HashMap<String, Object>();
		if (searchCondition != null) {
			if (searchCondition.getSearchType() != null && !searchCondition.getSearchType().isEmpty()) {
				searchMap.put("searchType", searchCondition.getSearchType());
			}
			if (searchCondition.getKeyword() != null && !searchCondition.getKeyword().isEmpty()) {
				searchMap.put("keyword", searchCondition.getKeyword());
			}
		}		
		searchMap.put("qnaBno", qnaBno);

		return qnaBoardDAO.selectNextQnaBno(searchMap);
	}		
}