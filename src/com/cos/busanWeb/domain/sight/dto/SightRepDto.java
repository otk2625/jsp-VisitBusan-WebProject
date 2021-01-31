package com.cos.busanWeb.domain.sight.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class SightRepDto {
	private int id;
	private String title;
	private String subTitle;
	private String mainImg;
	private int readCount;
	private int reviewCount;
	private int likeCount;
	private double sightlat;
	private double sightlng;
}
