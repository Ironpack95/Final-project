package kh.spring.DAO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class GoodDAO {
	
	@Autowired
	private SqlSession mybatis;
	
	//좋아요 정보 삽입. by parent_seq
	public void insert(String email, String parent_seq) {
		Map<String, String> map = new HashMap<>();
		map.put("email", email);
		map.put("parent_seq", parent_seq);
		
		mybatis.insert("Good.insert", map);
	}
	
	//좋아요 정보 삭제. by parent_seq
	public void delete(String email, String parent_seq) {
		Map<String, String> map = new HashMap<>();
		map.put("email", email);
		map.put("parent_seq", parent_seq);
		
		mybatis.delete("Good.delete", map);
	}
	
	//해당 게시글 좋아요 여부 판단
	public int goodExist(String email, String parent_seq) {
		Map<String, String> map = new HashMap<>();
		map.put("email", email);
		map.put("parent_seq", parent_seq);
		return mybatis.selectOne("Good.goodExist", map);

	}
	
	// parent_seq 기준 좋아요 수 카운트
	public int countLikes(String parent_seq) {
		return mybatis.selectOne("Good.countLikes",parent_seq);
	}
	
	// 특정 사용자의 좋아요한 목록
	public List<String> myLikeList(String email){
		return mybatis.selectList("Good.myLikeList",email);
	}
	
}