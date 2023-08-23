package com.grgr.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.grgr.dto.InfoBoard;

public interface InfoBoardMapper {
	int infoBoardCount(Map<String, Object> map);
	int insertInfoBoard(InfoBoard infoBoard);
	int updateInfoBoard(InfoBoard infoBoard);
	int deleteInfoBoard(@Param("infoBno") int infoBno,@Param("uno") int uno);
	int blindInfoBoard(int infoBno);
	int increaseInfoViewCnt(int infoBno);
	int increaseInfoReportNo(int infoBno);
	InfoBoard selectInfoBoard(int infoBno);
	Integer selectPrevInfoBno(int infoBno);
	Integer selectNextInfoBno(int infoBno);
	List<InfoBoard> selectInfoBoardList(Map<String, Object> map);
	
	
}
