package com.math.model.lecture;

public class LectureBean {

	private int no;
	private String name;
	private String simple_desc;
	private String detail_desc;
	private String img;
	private String price;
	private String intro_video;

	public LectureBean() {
	}

	public LectureBean(String name, String simple_desc, String detail_desc, String img, String price,
			String intro_video) {
		this.name = name;
		this.simple_desc = simple_desc;
		this.detail_desc = detail_desc;
		this.img = img;
		this.price = price;
		this.intro_video = intro_video;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSimple_desc() {
		return simple_desc;
	}

	public void setSimple_desc(String simple_desc) {
		this.simple_desc = simple_desc;
	}

	public String getDetail_desc() {
		return detail_desc;
	}

	public void setDetail_desc(String detail_desc) {
		this.detail_desc = detail_desc;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getIntro_video() {
		return intro_video;
	}

	public void setIntro_video(String intro_video) {
		this.intro_video = intro_video;
	}

	@Override
	public String toString() {
		return "LectureBean [no=" + no + ", name=" + name + ", simple_desc=" + simple_desc + ", detail_desc="
				+ detail_desc + ", img=" + img + ", price=" + price + ", intro_video=" + intro_video + "]";
	}

}
