package com.cos.busanWeb.domain.sight;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cos.busanWeb.config.DB;
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
			String sql = "SELECT * from sight ";
			Connection conn = DB.getConnection();
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				pstmt = conn.prepareStatement(sql);
				rs =  pstmt.executeQuery();

				rs.last();
				int a = rs.getRow();
				
				//if(rs.next){return rs.getInt(1); => 개수 뽑아내기}
			
			
				return a;
			} catch (Exception e) {
				e.printStackTrace();
			} finally { // 무조건 실행
				DB.close(conn, pstmt);
			}
			return -1;
		}
}
