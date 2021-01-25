package com.cos.busanWeb.domain.sight;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Item {

	@SerializedName("UC_SEQ")
	@Expose
	public Integer uCSEQ;
	@SerializedName("MAIN_TITLE")
	@Expose
	public String mAINTITLE;
	@SerializedName("GUGUN_NM")
	@Expose
	public String gUGUNNM;
	@SerializedName("LAT")
	@Expose
	public Double lAT;
	@SerializedName("LNG")
	@Expose
	public Double lNG;
	@SerializedName("PLACE")
	@Expose
	public String pLACE;
	@SerializedName("TITLE")
	@Expose
	public String tITLE;
	@SerializedName("SUBTITLE")
	@Expose
	public String sUBTITLE;
	@SerializedName("ADDR1")
	@Expose
	public String aDDR1;
	@SerializedName("CNTCT_TEL")
	@Expose
	public String cNTCTTEL;
	@SerializedName("HOMEPAGE_URL")
	@Expose
	public String hOMEPAGEURL;
	@SerializedName("TRFC_INFO")
	@Expose
	public String tRFCINFO;
	@SerializedName("USAGE_DAY")
	@Expose
	public String uSAGEDAY;
	@SerializedName("HLDY_INFO")
	@Expose
	public String hLDYINFO;
	@SerializedName("USAGE_DAY_WEEK_AND_TIME")
	@Expose
	public String uSAGEDAYWEEKANDTIME;
	@SerializedName("USAGE_AMOUNT")
	@Expose
	public String uSAGEAMOUNT;
	@SerializedName("MIDDLE_SIZE_RM1")
	@Expose
	public String mIDDLESIZERM1;
	@SerializedName("MAIN_IMG_NORMAL")
	@Expose
	public String mAINIMGNORMAL;
	@SerializedName("MAIN_IMG_THUMB")
	@Expose
	public String mAINIMGTHUMB;
	@SerializedName("ITEMCNTNTS")
	@Expose
	public String iTEMCNTNTS;
}
