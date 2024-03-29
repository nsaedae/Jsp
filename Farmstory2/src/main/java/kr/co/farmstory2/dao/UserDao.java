package kr.co.farmstory2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import kr.co.farmstory2.config.DBConfig;
import kr.co.farmstory2.config.Sql;
import kr.co.farmstory2.vo.TermsVo;
import kr.co.farmstory2.vo.UserVo;

public class UserDao {
	// 싱글톤 객체
	private static UserDao instance = new UserDao();
	
	public static UserDao getInstance() {
		return instance;
	}
	
	private UserDao() {}
	
	// 기본 CRUD
	public void insertUser(UserVo user) {
		
		try{
			Connection conn = DBConfig.getInstance().getConnection();
			PreparedStatement psmt = conn.prepareStatement(Sql.INSERT_USER);
			psmt.setString(1, user.getUid());
			psmt.setString(2, user.getPass());
			psmt.setString(3, user.getName());
			psmt.setString(4, user.getNick());
			psmt.setString(5, user.getEmail());
			psmt.setString(6, user.getHp());
			psmt.setString(7, user.getZip());
			psmt.setString(8, user.getAddr1());
			psmt.setString(9, user.getAddr2());
			psmt.setString(10, user.getRegip());
			psmt.executeUpdate();
			
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
	public TermsVo selectTerms() {
		
		TermsVo tv = new TermsVo();
		try {
			Connection conn = DBConfig.getInstance().getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(Sql.SELECT_TERMS);
			
			if(rs.next()){
				tv.setTerms(rs.getString(1));
				tv.setPrivacy(rs.getString(2));
			}
			conn.close();
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return tv;
	}
	
	public int selectCountUid(String uid) {
		
		int count = 0;
		
		try {
			Connection conn = DBConfig.getInstance().getConnection();
			PreparedStatement psmt = conn.prepareStatement(Sql.SELECT_COUNT_UID);
			psmt.setString(1, uid);
			
			ResultSet rs = psmt.executeQuery();
			
			if(rs.next()) {
				count = rs.getInt(1);
			}
			conn.close();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}
	public UserVo selectUser(String uid, String pass) {
		
		UserVo ub = null; // 선언
		
		try{
			Connection conn = DBConfig.getInstance().getConnection();
			PreparedStatement psmt = conn.prepareStatement(Sql.SELECT_USER);
			psmt.setString(1, uid);
			psmt.setString(2, pass);
			
			ResultSet rs = psmt.executeQuery();
			
			if(rs.next()){
				// 일치하는 회원이 있으면
				ub = new UserVo(); // 생성
				ub.setUid(rs.getString(1));
				ub.setPass(rs.getString(2));
				ub.setName(rs.getString(3));
				ub.setNick(rs.getString(4));
				ub.setEmail(rs.getString(5));
				ub.setHp(rs.getString(6));
				ub.setGrade(rs.getInt(7));
				ub.setZip(rs.getString(8));
				ub.setAddr1(rs.getString(9));
				ub.setAddr2(rs.getString(10));
				ub.setRegip(rs.getString(11));
				ub.setRdate(rs.getString(12));
			}
			conn.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return ub;
	}
	
	public void selectUsers() {}
	public void updateUser() {}
	public void deleteUser() {}
}
