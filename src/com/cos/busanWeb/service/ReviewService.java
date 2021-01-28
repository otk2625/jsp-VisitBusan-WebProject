package com.cos.busanWeb.service;

import java.util.List;

import com.cos.busanWeb.domain.review.ReviewDao;
import com.cos.busanWeb.domain.review.dto.ReviewDto;
import com.cos.busanWeb.domain.review.dto.ReviewReqDto;

public class ReviewService {
	ReviewDao dao;

	public ReviewService() {
		dao = new ReviewDao();
	}

	public int 댓글쓰기(ReviewReqDto dto) {
		// TODO Auto-generated method stub
		return dao.reviewSave(dto);
	}

	public List<ReviewDto> 댓글목록(int sightId) {
		// TODO Auto-generated method stub
		return dao.findBysightId(sightId);
	}
	
	
	

}