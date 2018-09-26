package com.math.model.lecture;

public interface LectureDao {

	public LectureBean select(String name);
	public int insert(LectureBean lectureBean);
	public void delete(String name);
	
}
