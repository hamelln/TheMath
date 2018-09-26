package com.math.model.lecture;

import org.apache.ibatis.session.SqlSession;

import mapper.manager.SqlSessionManager;

public class LectureDaoImpl implements LectureDao {

	// ----------------------싱글톤 패턴-----------------------------
	private LectureDaoImpl() {
	}

	private static class LazyHolder {
		static final LectureDaoImpl INSTANCE = new LectureDaoImpl();
	}

	public static LectureDaoImpl getInstance() {
		return LazyHolder.INSTANCE;
	}
	// ----------------------싱글톤 패턴-----------------------------

	// SqlSession을 선언한다. 현재 내가 작성한 SqlSession은 xml과 연결시켜준다.
	SqlSession sqlSession = SqlSessionManager.getInstance().getSession();

	@Override
	public LectureBean select(String name) {
		LectureBean lectureBean = sqlSession.selectOne("selectLecture", name);
		return lectureBean;
	}

	// Dao의 메소드를 오버라이드 한다. 이 메소드는 강의등록이다.
	@Override
	public int insert(LectureBean lectureBean) {
		sqlSession.insert("insertLecture", lectureBean);
		sqlSession.commit();
		return 1;
	}

	@Override
	public void delete(String name) {

	}

}
