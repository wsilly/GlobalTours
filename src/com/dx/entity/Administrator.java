package com.dx.entity;

import java.util.Date;

/**
 * 后台管理员实体类
 * 
 * @author dx
 *
 */
public class Administrator {
	private Integer id; // 编号
	private String name; // 姓名
	private String password; // 密码
	private Character role; // 角色
	private String tel; // 手机号码
	private String email; // 电子邮箱
	private String photo; // 电话号码
	private Date time; // 注册时间

	public Administrator() {
		super();
	}

	public Administrator(Integer id, String name, String password, Character role, String tel, String email,
			String photo, Date time) {
		this.id = id;
		this.name = name;
		this.password = password;
		this.role = role;
		this.tel = tel;
		this.email = email;
		this.photo = photo;
		this.time = time;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Character getRole() {
		return role;
	}

	public void setRole(Character role) {
		this.role = role;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}
}
