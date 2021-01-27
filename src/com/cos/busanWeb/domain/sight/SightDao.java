package com.cos.busanWeb.domain.sight;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cos.busanWeb.config.DB;
import com.cos.busanWeb.domain.sight.dto.SightDetailDto;
import com.cos.busanWeb.domain.sight.dto.sightDto;
import com.cos.busanWeb.domain.user.User;

public class SightDao {
	
	// 조회순으로
		public List<sightDto> findByReadCount(int page) {
			List<sightDto> list = new ArrayList<sightDto>();
			
			String sql = "SELECT id, title, subtitle, mainimg From sight order by readcount desc limit ?,16 ";
			Connection conn = DB.getConnection();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, page*16);
				rs = pstmt.executeQuery();

				while(rs.next()) {
					sightDto dto = sightDto.builder()
							.id(rs.getInt("id"))
							.title(rs.getString("title"))
							.subTitle(rs.getString("subtitle"))
							.mainImg(rs.getString("mainimg"))
							.build();
					
					list.add(dto);
				}
				
				return list;
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DB.close(conn, pstmt, rs);
			}
			return null;
		}
		public int countAll() {
			String sql = "SELECT count(*) from sight ";
			Connection conn = DB.getConnection();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				pstmt = conn.prepareStatement(sql);
				rs =  pstmt.executeQuery();

	
				if(rs.next()){
					return rs.getInt(1);
				}
				
				//if(rs.next){return rs.getInt(1); => 개수 뽑아내기}
			
		
			} catch (Exception e) {
				e.printStackTrace();
			} finally { // 무조건 실행
				DB.close(conn, pstmt);
			}
			return -1;
		}
		
		public SightDetailDto findById(int id){
			StringBuffer sb = new StringBuffer();
			sb.append("select id, title, subTitle, content, mainImg, readCount ");
			sb.append("from sight ");
			sb.append("where id = ?");

			String sql = sb.toString();
			Connection conn = DB.getConnection();
			PreparedStatement pstmt = null;
			ResultSet rs  = null;
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, id);
				rs =  pstmt.executeQuery();
				
				if(rs.next()) { 
					SightDetailDto dto = new SightDetailDto();
					dto.setId(rs.getInt("id"));
					dto.setTitle(rs.getString("title"));
					dto.setSubTitle(rs.getString("subTitle"));
					dto.setContent(rs.getString("content"));
					dto.setMainImg(rs.getString("mainImg"));
					dto.setReadCount(rs.getInt("readCount"));
					return dto;
				}
			} catch (Exception e) {
				e.printStackTrace();
			} 
			return null;
		}
		public List<sightDto> findBySearch(int page, String keyword) {
List<sightDto> list = new ArrayList<sightDto>();
			
			String sql = "SELECT id, title, subtitle, mainimg From sight where title like ? order by readcount desc limit ?,16 ";
			Connection conn = DB.getConnection();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, "%"+keyword+"%");
				pstmt.setInt(2, page*16);
				rs = pstmt.executeQuery();

				while(rs.next()) {
					sightDto dto = sightDto.builder()
							.id(rs.getInt("id"))
							.title(rs.getString("title"))
							.subTitle(rs.getString("subtitle"))
							.mainImg(rs.getString("mainimg"))
							.build();
					
					list.add(dto);
				}
				
				return list;
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				DB.close(conn, pstmt, rs);
			}
			return null;
		}
		public int countBySearch(String keyword) {
			String sql = "SELECT count(*) from sight where title like ?  ";
			Connection conn = DB.getConnection();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, "%"+keyword+"%");
				rs =  pstmt.executeQuery();

	
				if(rs.next()){
					return rs.getInt(1);
				}
				
				//if(rs.next){return rs.getInt(1); => 개수 뽑아내기}
			
		
			} catch (Exception e) {
				e.printStackTrace();
			} finally { // 무조건 실행
				DB.close(conn, pstmt);
			}
			return -1;
		}
}
