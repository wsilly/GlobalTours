package com.dx.entity;

/**
 * 合作商家实体类
 * 
 * @author dx
 *
 */
public class Cooperative {
	private Integer id;
	private String name;
	private String type; // 类型 1:酒店类 2:出行工具类 3:旅游区类
	private String tel;
	private String state; // 状态 0:未合作 1：已合作
	private String address; // 商家地址
	private Integer tourisId; // 景点Id

	public Cooperative() {
		super();
	}

	public Cooperative(Integer id, String name, String type, String tel, String state, String address,
			Integer tourisId) {
		this.id = id;
		this.name = name;
		this.type = type;
		this.tel = tel;
		this.state = state;
		this.address = address;
		this.tourisId = tourisId;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getTourisId() {
		return tourisId;
	}

	public void setTourisId(Integer tourisId) {
		this.tourisId = tourisId;
	}

}
