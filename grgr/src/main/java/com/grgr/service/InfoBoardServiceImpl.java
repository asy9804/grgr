package com.grgr.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.grgr.dao.InfoBoardDAO;
import com.grgr.dto.InfoBoard;
import com.grgr.util.Pager;
import com.grgr.util.SearchCondition;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class InfoBoardServiceImpl implements InfoBoardService {
	private final InfoBoardDAO infoBoardDAO;

	@Override
	public int getInfoCount(SearchCondition searchCondition) {
		Map<String, Object> searchMap = new HashMap<String, Object>();
		if (searchCondition != null) {
			if (searchCondition.getSearchType() != null && !searchCondition.getSearchType().isEmpty()) {
				searchMap.put("searchType", searchCondition.getSearchType());
			}
			if (searchCondition.getKeyword() != null && !searchCondition.getKeyword().isEmpty()) {
				searchMap.put("keyword", searchCondition.getKeyword());
			}
		}
		searchMap.put("infoLoc", "강남구");
		return infoBoardDAO.infoBoardCount(searchMap);
	}

	@Override
	public void addInfoBoard(InfoBoard infoBoard) {
		infoBoardDAO.insertInfoBoard(infoBoard);
	}

	@Override
	public void modifyInfoBoard(InfoBoard infoBoard) {
		// TODO Auto-generated method stub
		infoBoardDAO.updateInfoBoard(infoBoard);

	}

	@Override
	public void removeInfoBoard(int infoBno, int uno) {
		// TODO Auto-generated method stub
		infoBoardDAO.deleteInfoBoard(infoBno, uno);

	}

	@Override
	public void hideInfoBoard(int infoBno) {
		// TODO Auto-generated method stub
		infoBoardDAO.blindInfoBoard(infoBno);
	}

	@Override
	public InfoBoard getInfoBoard(int infoBno) {
		// TODO Auto-generated method stub
		return infoBoardDAO.selectInfoBoard(infoBno);
	}

	@Override
	public Map<String, Object> getInfoBoardList(SearchCondition searchCondition) {
		Map<String, Object> searchMap = new HashMap<String, Object>();
		if (searchCondition != null) {
			if (searchCondition.getSearchType() != null && !searchCondition.getSearchType().isEmpty()) {
				searchMap.put("searchType", searchCondition.getSearchType());
			}
			if (searchCondition.getKeyword() != null && !searchCondition.getKeyword().isEmpty()) {
				searchMap.put("keyword", searchCondition.getKeyword());
			}
		}
		searchMap.put("infoLoc", "강남구");

		int totalBoard = infoBoardDAO.infoBoardCount(searchMap);
		//
		Pager pager = new Pager(totalBoard, searchCondition);
		// 페이징 계산
		searchMap.put("startRow", pager.getStartRow());
		searchMap.put("endRow", pager.getEndRow());

		List<InfoBoard> infoBoardList = infoBoardDAO.selectInfoBoardList(searchMap);

		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("infoBoardList", infoBoardList);
		resultMap.put("pager", pager); // pager 객체를 반환
		resultMap.put("searchMap", searchMap);

		return resultMap;
	}

	@Override
	public Integer prevInfoBno(SearchCondition searchCondition, int infoBno) {
		Map<String, Object> searchMap = new HashMap<String, Object>();
		if (searchCondition != null) {
			if (searchCondition.getSearchType() != null && !searchCondition.getSearchType().isEmpty()) {
				searchMap.put("searchType", searchCondition.getSearchType());
			}
			if (searchCondition.getKeyword() != null && !searchCondition.getKeyword().isEmpty()) {
				searchMap.put("keyword", searchCondition.getKeyword());
			}
		}
		searchMap.put("infoLoc", "강남구");
		searchMap.put("infoBno", infoBno);
		
		return infoBoardDAO.selectPrevInfoBno(searchMap);
	}

	@Override
	public Integer nextInfoBno(SearchCondition searchCondition, int infoBno) {
		Map<String, Object> searchMap = new HashMap<String, Object>();
		if (searchCondition != null) {
			if (searchCondition.getSearchType() != null && !searchCondition.getSearchType().isEmpty()) {
				searchMap.put("searchType", searchCondition.getSearchType());
			}
			if (searchCondition.getKeyword() != null && !searchCondition.getKeyword().isEmpty()) {
				searchMap.put("keyword", searchCondition.getKeyword());
			}
		}
		searchMap.put("infoLoc", "강남구");
		searchMap.put("infoBno", infoBno);
		
		
		

		return infoBoardDAO.selectNextInfoBno(searchMap);
	}

}
