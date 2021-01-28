package com.cos.busanWeb.domain.review.dto;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ReviewDto {
	private int id;
	private int userId;
	private int sightId;
	private String title;
	private String content;
	private int likePoint;
	private String username;
	private Timestamp createDate;
	
	public String getTitle() {
		return title.replaceAll("<","&lt;").replaceAll(">", "&gt;");
	}
	
	
}
