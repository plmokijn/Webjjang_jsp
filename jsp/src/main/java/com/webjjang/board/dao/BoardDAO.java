package com.webjjang.board.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.webjjang.board.dto.BoardDTO;

public class BoardDAO {

	public List<BoardDTO> list() {

		List<BoardDTO> list = null;
		
		// 오라클 서버에 접속할 정보 정의
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String uid = "jkm";
		String upw = "wjdrhkdals84";

		// DB 연동해서 사용할 객체 선언
		Connection con = null; // 연결 객체
		PreparedStatement pstmt = null; // 실행문 객체
		ResultSet rs = null; // DB에서 데이터를 가져오면 저장하는 객체

		try {
			// 1. 드라이버 확인
			Class.forName(driver);
			// 2. 연결
			con = DriverManager.getConnection(url, uid, upw);
			// 3. 처리할 오라클 문장을 만든다.
			String sql = "select no, title, writer, " + " to_char(writedate,'yyyy-mm-dd') writedate, hit "
					+ " from board " + " order by no desc";
			// 4. 실행 객체
			pstmt = con.prepareStatement(sql);
			// 5. 실행 -> rs
			rs = pstmt.executeQuery();
			// 6. 표시
			if (rs != null) {
				while (rs.next()) {
					if(list == null) list = new ArrayList<>();
					BoardDTO dto = new BoardDTO();
					dto.setNo(rs.getInt("no"));
					dto.setTitle(rs.getString("title"));
					dto.setWriter(rs.getString("writer"));
					dto.setWriteDate(rs.getString("writedate"));
					dto.setHit(rs.getInt("hit"));
					
					list.add(dto);
					
					System.out.print(rs.getInt("no") + "/");
					System.out.print(rs.getString("title") + "/");
					System.out.print(rs.getString("writer") + "/");
					System.out.print(rs.getString("writedate") + "/");
					System.out.print(rs.getInt("hit"));
					System.out.println();
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace(); // 오류가 난 경우 오류의 경로와 내용을 출력
		} finally {
			try {
				// 7. 닫기
				if(con != null) con.close();
				if(pstmt != null) pstmt.close();
				if(rs != null) rs.close();
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		System.out.println("BoardDao.list : " + list);
		return list;
	}

}
