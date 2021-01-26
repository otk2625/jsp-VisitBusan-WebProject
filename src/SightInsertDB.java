import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Iterator;
import java.util.List;

import com.cos.busanWeb.config.DB;
import com.cos.busanWeb.domain.sight.Item;
import com.cos.busanWeb.domain.sight.SightResponseDto;
import com.google.gson.Gson;

public class SightInsertDB {

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


			Gson gson = new Gson();
			SightResponseDto dto = gson.fromJson(sb.toString(), SightResponseDto.class);

			List<Item> items = dto.getGetAttractionKr().getItem();

			return items;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;

	}
	public Connection getconn() {
		Connection conn = null;
		
		String url="jdbc:mysql://localhost:3306/visitdb?serverTimezone=Asia/Seoul";
		String username = "visituser";
		String password = "bitc5600";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(url,username, password);
			System.out.println("연결성공");
			
			return conn;
		} catch (Exception e) {
			e.getMessage();
		}
		
		System.out.println("연결 실패");
		return null;
	}
	
	public static void main(String[] args) {
		
		SightInsertDB db = new SightInsertDB();

			List<Item> items = null;
			try {
				items = db.뿌리기(1, 112);
				for (int i = 0; i<items.size(); i++) {
					
					String sql = "INSERT INTO sight(id,title,subtitle,mainimg) VALUES(?,?,?,?) ";
					Connection conn = db.getconn();
					PreparedStatement pstmt = null;
					
					pstmt = conn.prepareStatement(sql);
					pstmt.setInt(1, items.get(i).getUCSEQ());
					pstmt.setString(2, items.get(i).getMAINTITLE());
					pstmt.setString(3, items.get(i).getSUBTITLE());
					pstmt.setString(4, items.get(i).getMAINIMGNORMAL());
					
					int result = pstmt.executeUpdate();
					System.out.println(result);
					System.out.println("DB완료");
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	

	}
}
