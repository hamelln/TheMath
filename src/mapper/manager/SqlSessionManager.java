package mapper.manager;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {
	
	 private static SqlSessionManager instance;
	    InputStream inputStream;
	    SqlSessionFactory sqlSessionFactory;
	    
	    private SqlSessionManager() {
	    	/* mybatis-config.xml 경로를 리소스라는 변수명에 담는다. */
	        String resource = "mapper/config/mybatis-config.xml";
	        try {
	        	//아직은 경로를 '문자열'로만 만들어뒀다. 
	        	//이건 그냥 String 형태다. io형태가 아니다.
	        	//inputStream 변수에 경로를 담는다. 
	        	//Resources에서 스트림 형태로 리소스를 받아오자.
	            inputStream = Resources.getResourceAsStream(resource);
	            //inputStream이 생겼으니 이걸 활용할 녀석이 필요하다.
	            //sqlSessionFactory를 만들어야한다.
	            //sqlSessionFactory는 sqlSessionFactoryBuilder로 지을(build) 수 있다.
	            //짓는(build) 것은 inputStream을 이용해서 한다.
	            sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	    }
	 
	    public static SqlSessionManager getInstance() {
	        if (instance == null) {
	            instance = new SqlSessionManager();
	        }
	        return instance;
	    }
	 
	    //이 클래스의 최종목적은 session을 얻는 거다. 
	    //getSession 메소드를 만들어서
	    //sqlSessionFactory에서 openSession을 가져온다.
	    public SqlSession getSession() {
	        SqlSession session = null;
	        session = sqlSessionFactory.openSession();
	        return session;
	    }
	
}