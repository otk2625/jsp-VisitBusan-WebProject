package com.cos.busanWeb.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;

import com.cos.busanWeb.domain.sight.Item;
import com.cos.busanWeb.domain.sight.SightResponseDto;
import com.google.gson.Gson;

public class BoardService {

	public List<Item> 뿌리기(int n, int n2) throws IOException {
		StringBuilder urlBuilder = new StringBuilder(
				"http://apis.data.go.kr/6260000/AttractionService/getAttractionKr"); /* URL */
		urlBuilder.append("?" + URLEncoder.encode("ServiceKey", "UTF-8")
				+ "=PTALMwLK1q1NFwv1bpWkYZIRSp5WN3yqteEFGTknDMFQLQnSyZn1KGe2hm%2FWVui4%2FC11p8Qs5d8yGXAUz7ZKMA%3D%3D"); /*
																														 * Service
																														 * Key
																														 */
		urlBuilder.append(
				"&" + URLEncoder.encode("pageNo", "UTF-8") + "=" + URLEncoder.encode(""+n, "UTF-8")); /* ��������ȣ */
		urlBuilder.append("&" + URLEncoder.encode("numOfRows", "UTF-8") + "="
				+ URLEncoder.encode(""+n2, "UTF-8")); /* �� ������ ��� �� */
		urlBuilder.append("&" + URLEncoder.encode("resultType", "UTF-8") + "="
				+ URLEncoder.encode("json", "UTF-8")); /* JSON������� ȣ�� �� �Ķ���� resultType=json �Է� */

		try {
			URL url = new URL(urlBuilder.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			StringBuilder sb = new StringBuilder(); // builder, bufferd(동기화 지원)

			String input = null;
			while ((input = br.readLine()) != null) {
				sb.append(input);
			}
			System.out.println(sb.toString());

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
