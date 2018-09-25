package com.math.model.member;

import org.apache.ibatis.session.SqlSession;

import mapper.manager.SqlSessionManager;

public class MemberDaoImpl implements MemberDao {

	/* 주석 : 본 클래스는 MemberDao 인터페이스를 구현한 클래스이다. 
	 * 클래스의 목적은 다음과 같다.
	 * 
	 * 0. 클래스는 싱글톤 패턴으로 변경시켜 스레드 세이프를 취할 것.
	 * 1. Dao의 메소드들을 역할에 맞게 오버라이드한다.
	 * 2. 메소드는 sqlSession을 통해서 xml을 이용하여 구현한다.
	 * 
	 * 클래스의 구조는 다음과 같다.
	 * 
	 * 1. 뷰->컨트롤러->DaoImpl로 매개변수가 전달된다. 
	 * 변수는 컨트롤러가 DaoImpl의 메소드를 호출할 때 전달된다. 
	 * 
	 * 2. 호출된 메소드는 주어진 매개변수를 이용해서 작업만 하거나, 
	 * 반환할 결과값이 있으면 컨트롤러에게 돌려준다.
	 * 
	 * 참고 : 이 때 sqlSession을 통해서 xml을 이용한 작업과정을 거치는데,
	 * 이 과정이 데이터베이스와 값을 주고받는 과정이다.
	 * */
	
	
	//----------------------싱글톤 패턴-----------------------------
	private MemberDaoImpl() {}

	private static class LazyHolder {
		static final MemberDaoImpl INSTANCE = new MemberDaoImpl();
	}

	public static MemberDaoImpl getInstance() {
		return LazyHolder.INSTANCE;
	}
	//-----------------------싱글톤 패턴------------------------------
	
	
	//SqlSession을 선언한다. 현재 내가 작성한 SqlSession은 xml과 연결시켜준다.
	SqlSession sqlSession = SqlSessionManager.getInstance().getSession();

	//Dao의 메소드를 오버라이드한다. 이 메소드는 로그인 시 아이디와 비밀번호를 체크한다.
	@Override
	public int checkUser(String email, String pw) {
		int result = -1;
		MemberBean member = (MemberBean) sqlSession.selectOne("selectAMember", email);
		if (member != null) {
			if (email.equals(member.getEmail())) {
				result = pw.equals(member.getPw()) ? 1 : 0;
			}
		} else {
			result = -1;
		}
		return result;
	}
	
	//Dao의 메소드를 오버라이드한다. 이 메소드는 로그인 시 비교확인할 회원정보를 데이터베이스에서 꺼내온다.
	@Override
	public MemberBean getMember(String email) {
		MemberBean member = new MemberBean();
		member.setEmail(email);
		return sqlSession.selectOne("selectAMember", email);
	}

	//Dao의 메소드를 오버라이드한다. 이 메소드는 입력된 정보를 데이터베이스에 집어넣는다.
	@Override
	public void join(MemberBean memberBean) {
		sqlSession.insert("memberMapper.joinMember", memberBean);
		sqlSession.commit();
	}

	@Override
	public void update(String name, String pw, String email) {
	}

	@Override
	public void delete(String email) {
		sqlSession.delete("deleteMember", email);
		sqlSession.commit();
	}

}
