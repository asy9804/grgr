package com.grgr.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.grgr.dao.QnaBoardDAO;
import com.grgr.dto.QnaBoard;
import com.grgr.util.Pager;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class QnaBoardServiceImpl implements QnaBoardService {
	private final QnaBoardDAO qnaBoardDAO;

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
	public QnaBoard getQnaBoard(int qnaBno) {
		return 	qnaBoardDAO.selectQnaBoard(qnaBno);
	}

	@Override
	public Map<String, Object> getQnaBoardList(int pageNum) {
		int totalBoard=qnaBoardDAO.selectQnaBoardCount();
		
		Pager pager=new Pager(pageNum, totalBoard, 10, 10);
		
		Map<String, Object> pageMap=new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		
		List<QnaBoard> qnaBoardList=qnaBoardDAO.selectQnaBoardList(pageMap);
		
		Map<String, Object> resultMap=new HashMap<String, Object>();
		resultMap.put("qnaBoardList", qnaBoardList);
		resultMap.put("pager", pager);
		
		return resultMap;
	}
	
}
