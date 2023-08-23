package com.grgr.service;

import java.util.Map;

import com.grgr.dto.InfoBoard;
import com.grgr.util.SearchCondition;

public interface InfoBoardService {
	int getInfoCount(SearchCondition searchCondition);
	void addInfoBoard(InfoBoard infoBoard);
	void modifyInfoBoard(InfoBoard infoBoard);
	void removeInfoBoard(int infoBno, int uno);
	void hideInfoBoard(int infoBno);
//	int increaseInfoViewCnt(int infoBno);
//	int increaseInfoReportNo(int infoBno);
	InfoBoard getInfoBoard(int infoBno);
	Integer prevInfoBno(SearchCondition searchCondition, int infoBno);
	Integer nextInfoBno(SearchCondition searchCondition, int infoBno);
	Map<String, Object> getInfoBoardList(SearchCondition searchCondition);
}
