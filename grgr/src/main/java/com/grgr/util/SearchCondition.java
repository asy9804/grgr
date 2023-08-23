package com.grgr.util;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Data;

@Data
public class SearchCondition {
	private Integer pageNum = 1;
	private Integer pageSize = 10;
	private Integer blockSize = 10;
	private String searchType ="";
	private String keyword = "";
	
	public SearchCondition() {
		// TODO Auto-generated constructor stub
	}
	
	public SearchCondition(Integer pageNum, Integer pageSize, String searchType, String keyword) {
		super();
		this.pageNum = pageNum;
		this.pageSize = pageSize;
		this.searchType = searchType;
		this.keyword = keyword;
	}
	
	public String getQueryString(int pageNum) {
		
		return UriComponentsBuilder.newInstance()
				.queryParam("pageNum", pageNum)
				.queryParam("pageSize", pageSize)
				.queryParam("searchType", searchType)
				.queryParam("keyword", keyword).build().toUriString();
	}
	
	public String getQueryString() {
		return getQueryString(pageNum);
	}
}
