package com.grgr.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.grgr.dao.InfoBoardDAO;
import com.grgr.dto.InfoBoard;
import com.grgr.util.Pager;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class InfoBoardServiceImpl implements InfoBoardService {
	private final InfoBoardDAO infoBoardDAO;

	@Override
	public int getInfoCount(String searchType, String keyword) {
		Map<String, Object> searchMap = new HashMap<String, Object>();
		if(searchType!=null && keyword!=null) {
			searchMap.put("searchType", searchType);
			searchMap.put("keyword", keyword);
		}
		searchMap.put("infoLoc", "강남구");
		return infoBoardDAO.infoBoardCount(searchMap);
	}

	@Override
	public void addInfoBoard(InfoBoard infoBoard) {
		// TODO Auto-generated method stub
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
	public Map<String, Object> getInfoBoardList(int pageNum, String searchType, String keyword) {
		
		Map<String, Object> searchMap = new HashMap<String, Object>();
		if(searchType!=null && keyword!=null) {
			searchMap.put("searchType", searchType);
			searchMap.put("keyword", keyword);
		}
		searchMap.put("infoLoc", "강남구");

		
		int totalBoard = infoBoardDAO.infoBoardCount(searchMap);
		
		Pager pager = new Pager(pageNum, totalBoard, 10, 10);

		searchMap.put("startRow", pager.getStartRow());
		searchMap.put("endRow", pager.getEndRow());
		// 위치 추가시 String infoLoc 추가 
		

		List<InfoBoard> infoBoardList = infoBoardDAO.selectInfoBoardList(searchMap);

		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("infoBoardList", infoBoardList);
		resultMap.put("pager", pager);
		resultMap.put("searchMap", searchMap);

		return resultMap;
	}

	@Override
	public Integer prevInfoBno(int infoBno) {
		return infoBoardDAO.selectPrevInfoBno(infoBno);
	}

	@Override
	public Integer nextInfoBno(int infoBno) {
		return infoBoardDAO.selectNextInfoBno(infoBno);
	}

}
