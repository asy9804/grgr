package com.grgr.controller;

import java.util.List;
import java.util.Map;

import org.springframework.cglib.transform.impl.InterceptFieldCallback;
import org.springframework.stereotype.Controller;
import org.springframework.test.web.ModelAndViewAssert;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.grgr.dto.InfoBoard;
import com.grgr.service.InfoBoardService;
import com.grgr.util.Pager;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/infoboard")
@RequiredArgsConstructor
public class InfoBoardController {
	private final InfoBoardService infoBoardService;
	
	//글 목록 페이지 요청
	@GetMapping("/list")
	public String infoBoardList(@RequestParam(name = "pageNum", defaultValue = "1") int pageNum,  String searchType, String keyword, Model model){
		
		Map<String , Object> resultMap = infoBoardService.getInfoBoardList(pageNum, searchType, keyword );
		List<InfoBoard> infoBoardList = (List<InfoBoard>)resultMap.get("infoBoardList");
		Pager pager = (Pager) resultMap.get("pager");
		model.addAttribute("infoBoardList",infoBoardList);
		model.addAttribute("pager",pager);
		model.addAttribute("keyword", keyword);
		return "board/info_boardlist";
	}
	
	//선택한 글 보기
	@GetMapping("read")
	public String infoBoardRead(@RequestParam int infoBno, @RequestParam(name="pageNum",defaultValue = "1") Integer pageNum, Model model) {
		try {
			InfoBoard infoBoard = infoBoardService.getInfoBoard(infoBno);
			Integer prevInfoBno = infoBoardService.prevInfoBno(infoBno);
			Integer nextInfoBno = infoBoardService.nextInfoBno(infoBno);
			boolean isLastPost = false;
			if(nextInfoBno == null) {
				isLastPost=true;
			} else {
				model.addAttribute("nextInfoBno", nextInfoBno);				
			}
			model.addAttribute("prevInfoBno", prevInfoBno);
			model.addAttribute("infoBoard", infoBoard);
			model.addAttribute("isLastPost", isLastPost);
			model.addAttribute("pageNum", pageNum);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return "board/info_board";
	}
	
	
	//글쓰기 페이지 요청
	@GetMapping(value = "/write")
	public String infoBoardWrite(Model model) {
		return "board/info_write";
	}
	
	//글 작성 및 제출
	@PostMapping(value = "/write")
	public String infoBoardWrite(InfoBoard infoBoard, RedirectAttributes rattr) {
		try {
			if (infoBoard.getInfoTitle() == null || infoBoard.getInfoContent() == null) {
				throw new Exception();
			}
		} catch (Exception e) {
			// TODO: handle exception
			rattr.addFlashAttribute("msg", "제목 또는 내용이 비었습니다.");
			return "redirect:/infoboard/write";
		}
		infoBoardService.addInfoBoard(infoBoard);
		return "redirect:/infoboard/list";
	}
	
	//글 수정페이지 요청
	@GetMapping("/modify")
	public String infoBoardModify(int infoBno, Model model ) {
		model.addAttribute("infoBoard", infoBoardService.getInfoBoard(infoBno));
		return "board/info_modify";
	}
	
	//글 수정 제출
	@PostMapping(value="/modify")
	public String infoBoardModify(InfoBoard infoBoard, RedirectAttributes rattr) {
		//int uno = (int) session.getAttribute("uno");
		try {
			if (infoBoard.getInfoTitle() == null || infoBoard.getInfoContent() == null) {
				throw new Exception();
			}
		} catch (Exception e) {
			// TODO: handle exception
			rattr.addFlashAttribute("msg", "제목 또는 내용이 비었습니다.");
			return "redirect:/infoboard/modify";
		}
		infoBoardService.modifyInfoBoard(infoBoard);
		return "redirect:/infoboard/read?infoBno="+infoBoard.getInfoBno();

	}
	
	//글 제거
	@RequestMapping("/remove")
	public String infoBoardRemove(@RequestParam Integer infoBno, @RequestParam Integer uno, int pageNum, RedirectAttributes rattr) {
		infoBoardService.removeInfoBoard(infoBno, uno);
		rattr.addFlashAttribute("pageNum", pageNum);
		return "redirect:/infoboard/list?pageNum="+pageNum;
	}

	
	
}
