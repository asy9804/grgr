package com.grgr.dao;

import java.util.List;
import java.util.Map;

import com.grgr.dto.InfoBoard;

public interface InfoBoardDAO {
	int infoBoardCount(Map<String, Object> map);
	int insertInfoBoard(InfoBoard infoBoard);
	int updateInfoBoard(InfoBoard infoBoard);
	int deleteInfoBoard(int infoBno, int uno);
	int blindInfoBoard(int infoBno);
	int increaseInfoViewCnt(int infoBno);
	int increaseInfoReportNo(int infoBno);
	InfoBoard selectInfoBoard(int infoBno);
	Integer selectPrevInfoBno(Map<String, Object> map);
	Integer selectNextInfoBno(Map<String, Object> map);
	List<InfoBoard> selectInfoBoardList(Map<String, Object> map);
}
