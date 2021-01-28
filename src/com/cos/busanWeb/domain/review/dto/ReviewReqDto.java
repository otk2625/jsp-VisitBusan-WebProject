package com.cos.busanWeb.domain.review.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ReviewReqDto {
	private int userId;
	private int sightId;
	private String title;
	private String content;
	private int likePoint;

}

