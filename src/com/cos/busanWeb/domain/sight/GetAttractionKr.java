package com.cos.busanWeb.domain.sight;

import java.util.List;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

import lombok.Data;

@Data
public class GetAttractionKr {


	@SerializedName("item")
	@Expose
	public List<Item> item = null;
	@SerializedName("numOfRows")
	@Expose
	public Integer numOfRows;
	@SerializedName("pageNo")
	@Expose
	public Integer pageNo;
	@SerializedName("totalCount")
	@Expose
	public Integer totalCount;
}
