package com.grgr.service;

import java.util.Map;

import com.grgr.dto.InfoBoard;

public interface InfoBoardService {
	int getInfoCount(String searchType, String keyword);
	void addInfoBoard(InfoBoard infoBoard);
	void modifyInfoBoard(InfoBoard infoBoard);
	void removeInfoBoard(int infoBno, int uno);
	void hideInfoBoard(int infoBno);
//	int increaseInfoViewCnt(int infoBno);
//	int increaseInfoReportNo(int infoBno);
	InfoBoard getInfoBoard(int infoBno);
	Integer prevInfoBno(int infoBno);
	Integer nextInfoBno(int infoBno);
	Map<String, Object> getInfoBoardList(int pageNum, String searchType, String keyword);
}
