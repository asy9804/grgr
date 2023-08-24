package com.grgr.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.grgr.dao.QnaBoardDAO;
import com.grgr.dto.QnaBoard;
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
			if (searchCondition.getKeyword() != null && !searchCondition.getKeyword().isEmpty()) {
				searchMap.put("keyword", searchCondition.getKeyword());
			}
		}
		
		return qnaBoardDAO.qnaBoardCount(searchMap);
	}

	@Override
	public void addQnaBoard(QnaBoard qnaBoard) {
		qnaBoardDAO.insertQnaBoard(qnaBoard);
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
		/*
		 // 게시글 조회 및 조회수 증가 로직
	    QnaBoard qnaBoard = qnaBoardDAO.selectQnaBoard(qnaBno); // 게시글 조회
	    int currentViewCnt = qnaBoard.getQnaViewCnt(); // 현재 조회수
	    int updatedViewCnt = currentViewCnt + 1; // 증가된 조회수
	    qnaBoard.setQnaViewCnt(updatedViewCnt); // 조회수 업데이트
	    qnaBoardDAO.updateQnaBoard(qnaBoard); // 게시글 업데이트

	    return updatedViewCnt;
	    */
		
		return qnaBoardDAO.increaseQnaViewCnt(qnaBno);
	}
	
	@Override
	public QnaBoard getQnaBoard(int qnaBno) {
		return qnaBoardDAO.selectQnaBoard(qnaBno);
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
		//
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

		
}
