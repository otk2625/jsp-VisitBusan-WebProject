package com.cos.busanWeb.domain.sight.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class SightDetailDto {
	private int id;
	private String title;
	private String subTitle;
	private String content;
	private String mainImg;
	private int readCount;
}
