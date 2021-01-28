package com.cos.busanWeb.domain.sight;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cos.busanWeb.config.DB;
import com.cos.busanWeb.domain.sight.dto.SightDetailDto;
import com.cos.busanWeb.domain.sight.dto.SightRepDto;
import com.cos.busanWeb.domain.sight.dto.sightDto;

public class SightDao {
	
	// 조회순으로
		public List<SightRepDto> findByReadCount(int page) {
			List<SightRepDto> list = new ArrayList<SightRepDto>();
			
			StringBuffer sb = new StringBuffer();
			sb.append("SELECT s.id, s.title, s.subtitle, s.mainimg,s.readCount,s.likeCount ,count(r.id) as reviewCount "
					+ "From review r right OUTER JOIN sight s "
					+ "on s.id = r.sightId "
					+ "group by id "
					+ "order by readcount desc limit ?,16 ");
			String sql = sb.toString();
			
			Connection conn = DB.getConnection();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, page*16);
				rs = pstmt.executeQuery();

				while(rs.next()) {
					SightRepDto dto = SightRepDto.builder()
							.id(rs.getInt("id"))
							.title(rs.getString("title"))
							.subTitle(rs.getString("subtitle"))
							.mainImg(rs.getString("mainimg"))
							.readCount(rs.getInt("s.readCount"))
							.likeCount(rs.getInt("s.likeCount"))
							.reviewCount(rs.getInt("reviewCount"))
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
			sb.append("select id, title, subTitle, content, mainImg, readCount, likeCount ");
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
					dto.setLikeCount(rs.getInt("likeCount"));
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
			}
			return -1;
		}
		
		public int updateReadCount(int id) {
			String sql = "UPDATE sight SET readCount = readCount+1 WHERE id = ?";
			Connection conn = DB.getConnection();
			PreparedStatement pstmt = null;
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, id);
				int result = pstmt.executeUpdate();
				return result;
			} catch (Exception e) {
				e.printStackTrace();
			} finally { 
				DB.close(conn, pstmt);
			}
			return -1;
		}
		
		
		public int updatelikeCount(int id) {
			String sql = "UPDATE sight SET likeCount = likeCount+1 WHERE id = ?";
			Connection conn = DB.getConnection();
			PreparedStatement pstmt = null;
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, id);
				int result = pstmt.executeUpdate();
				return result;
			} catch (Exception e) {
				e.printStackTrace();
			} finally { 
				DB.close(conn, pstmt);
			}
			return -1;
		}
		
		public int like(int id, int userId, int sightId) {
			String sql = "INSERT INTO favorite VALUES(?, ?, ?)";
			Connection conn = DB.getConnection();
			PreparedStatement pstmt = null;
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, id);
				pstmt.setInt(2, userId);
				pstmt.setInt(3, sightId);
				int result = pstmt.executeUpdate();
				return result;
			} catch (Exception e) {
				e.printStackTrace();
			} finally { 
				DB.close(conn, pstmt);
			}
			return -1;
		}
}