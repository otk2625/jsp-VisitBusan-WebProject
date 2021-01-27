package com.cos.busanWeb.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import com.cos.busanWeb.domain.sight.Item;
import com.cos.busanWeb.domain.sight.SightDao;
import com.cos.busanWeb.domain.sight.SightResponseDto;
import com.cos.busanWeb.domain.sight.dto.FavoriteDto;
import com.cos.busanWeb.domain.sight.dto.SightDetailDto;
import com.cos.busanWeb.domain.sight.dto.sightDto;
import com.google.gson.Gson;

public class BoardService {
	SightDao dao;
	
	
	public BoardService() {
		dao = new SightDao();
	}
	
	public List<Item> 뿌리기(int n, int n2) throws IOException {
		StringBuilder urlBuilder = new StringBuilder(
				"http://apis.data.go.kr/6260000/AttractionService/getAttractionKr"); /* URL */
		urlBuilder.append("?" + URLEncoder.encode("ServiceKey", "UTF-8")
				+ "=PTALMwLK1q1NFwv1bpWkYZIRSp5WN3yqteEFGTknDMFQLQnSyZn1KGe2hm%2FWVui4%2FC11p8Qs5d8yGXAUz7ZKMA%3D%3D"); /*
																														 * Service
																														 * Key
																														 */
		urlBuilder.append(
				"&" + URLEncoder.encode("pageNo", "UTF-8") + "=" + URLEncoder.encode(""+n, "UTF-8")); 
		urlBuilder.append("&" + URLEncoder.encode("numOfRows", "UTF-8") + "="
				+ URLEncoder.encode(""+n2, "UTF-8")); 
		urlBuilder.append("&" + URLEncoder.encode("resultType", "UTF-8") + "="
				+ URLEncoder.encode("json", "UTF-8"));

		try {
			URL url = new URL(urlBuilder.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			StringBuilder sb = new StringBuilder(); // builder, bufferd(동기화 지원)

			String input = null;
			while ((input = br.readLine()) != null) {
				sb.append(input);
			}

			Gson gson = new Gson();
			SightResponseDto dto = gson.fromJson(sb.toString(), SightResponseDto.class);

			List<Item> items = dto.getGetAttractionKr().getItem();

			return items;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;

	}
	
	public List<sightDto> 조회수순으로뿌리기(int page) throws IOException {
		
		
		return dao.findByReadCount(page);

	}

	public int 목록개수() {
		
		return dao.countAll();
	}
	
	public SightDetailDto 글상세보기(int id) {
		int result = dao.updateReadCount(id);
		if(result == 1) {
			return dao.findById(id);	
		} else {
			return null;
		}
		
	}
	
	public SightDetailDto 좋아요(int id) {
		int like = dao.updatelikeCount(id);
		int result = dao.updateReadCount(id);
		if(result == 1 && like == 1) {
			return dao.findById(id);	
		} else {
			return null;
		}
		
	}
	
	public List<Item> 글상세뿌리기(int id) throws IOException {
		StringBuilder urlBuilder = new StringBuilder(
				"http://apis.data.go.kr/6260000/AttractionService/getAttractionKr"); /* URL */
		urlBuilder.append("?" + URLEncoder.encode("ServiceKey", "UTF-8")
				+ "=PTALMwLK1q1NFwv1bpWkYZIRSp5WN3yqteEFGTknDMFQLQnSyZn1KGe2hm%2FWVui4%2FC11p8Qs5d8yGXAUz7ZKMA%3D%3D"); /*
																														 * Service
																														 * Key
																														 */
		urlBuilder.append(
				"&" + URLEncoder.encode("pageNo", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /* ��������ȣ */
		urlBuilder.append("&" + URLEncoder.encode("numOfRows", "UTF-8") + "="
				+ URLEncoder.encode("1", "UTF-8")); /* �� ������ ��� �� */
		urlBuilder.append("&" + URLEncoder.encode("resultType", "UTF-8") + "="
				+ URLEncoder.encode("json", "UTF-8")); /* JSON������� ȣ�� �� �Ķ���� resultType=json �Է� */
		urlBuilder.append("&" + URLEncoder.encode("UC_SEQ","UTF-8") + "=" + URLEncoder.encode(""+id, "UTF-8")); /*콘텐츠 ID*/
		try {
			URL url = new URL(urlBuilder.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			StringBuilder sb = new StringBuilder(); // builder, bufferd(동기화 지원)

			String input = null;
			while ((input = br.readLine()) != null) {
				sb.append(input);
			}

			Gson gson = new Gson();
			SightResponseDto dto = gson.fromJson(sb.toString(), SightResponseDto.class);

			List<Item> items = dto.getGetAttractionKr().getItem();

			return items;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;

	}
	

}
