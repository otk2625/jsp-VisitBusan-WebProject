package com.cos.busanWeb.domain.review;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cos.busanWeb.config.DB;
import com.cos.busanWeb.domain.review.dto.ReviewDto;
import com.cos.busanWeb.domain.review.dto.ReviewReqDto;

public class ReviewDao {

	public int reviewSave(ReviewReqDto dto) {
		String sql = "INSERT INTO review(userId, sightid, content, title, likePoint, createDate) VALUES(?,?,?,?,?, now())";
		Connection conn = DB.getConnection();
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getUserId());
			pstmt.setInt(2, dto.getSightId());
			pstmt.setString(3, dto.getContent());
			pstmt.setString(4, dto.getTitle());
			pstmt.setInt(5, dto.getLikePoint());
			int result = pstmt.executeUpdate();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		} finally { // 무조건 실행
			DB.close(conn, pstmt);
		}
		return -1;
	}
	//댓글 목록
		public List<ReviewDto> findBysightId(int sightId) {
			
			// SELECT 해서 Board 객체를 컬렉션에 담아서 리턴
					List<ReviewDto> reviewList = new ArrayList<>();
					
					StringBuffer sb = new StringBuffer();
					sb.append("select r.id, r.userid, r.sightid,r.title, r.content, r.createdate, u.username ");
					sb.append("from review r inner join user u ");
					sb.append("on r.userid = u.id ");
					sb.append("where r.sightid=? ");
					sb.append("order by createdate desc; ");
					
					
					String sql = sb.toString();
					Connection conn = DB.getConnection();
					PreparedStatement pstmt = null;
					ResultSet rs = null;
					
					try {
						pstmt = conn.prepareStatement(sql/*, Statement.RETURN_GENERATED_KEYS*/);
						pstmt.setInt(1, sightId);
						rs =  pstmt.executeQuery();
						
						while(rs.next()) {
							ReviewDto reply = ReviewDto.builder()
				        		  .id(rs.getInt("r.id"))
				        		  .userId(rs.getInt("r.userid"))
				        		  .sightId(rs.getInt("r.sightid"))
				        		  .content(rs.getString("r.content"))
				        		  .createDate(rs.getTimestamp("r.createdate"))
				        		  .username(rs.getString("u.username"))
				        		  .title(rs.getString("r.title"))
				        		  .build();
				            
				          reviewList.add(reply);
				        }
						
						return reviewList;
					} catch (Exception e) {
						e.printStackTrace();
					}
					
					
					return null;
		}

}
