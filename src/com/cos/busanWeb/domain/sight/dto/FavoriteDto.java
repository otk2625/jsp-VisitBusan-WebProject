package com.cos.busanWeb.domain.sight.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class FavoriteDto {
	private int id;
	private int userId;
	private int sightId;
}
