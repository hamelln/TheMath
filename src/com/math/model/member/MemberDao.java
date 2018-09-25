package com.math.model.member;
/*Dao = Data Access Object의 줄임말로, 
 * 데이터와의 접속을 목적으로 하는 객체이다.
 * 데이터와 접속하는 것이 목표이므로, 데이터베이스와 클라이언트 사이를 오간다.
 * 보통은 인터페이스로 작성한 다음, DaoImpl 클래스로 구현한다.
 * 
 * 처음부터 DaoImpl이나 Dao에 전부 다 작성하면 되지 왜 인터페이스로 하느냐고
 * 의문을 가질 수 있는데, 업계의 관행으로 굳어져있는 상태이다.
 * 
 * 아무튼 Dao에 등록하는 메소드들은 Impl에서는 xml-데이터베이스로 오가기도 하고,
 * 클라이언트-Dao-DaoImpl로 오가기도 한다.
 * */
public interface MemberDao {
	
	int checkUser(String email, String pw);
	public void join(MemberBean memberBean);
	public void update(String name, String pw, String email);
	public void delete(String email);
	public MemberBean getMember(String email);
}
