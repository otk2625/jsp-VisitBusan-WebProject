package com.cos.busanWeb.domain.sight;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SightResponseDto {
	@SerializedName("getAttractionKr")
	@Expose
	public GetAttractionKr getAttractionKr;
}
