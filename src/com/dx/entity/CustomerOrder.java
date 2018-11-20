package com.dx.entity;

import java.util.Date;

public class customerOrder {
	private Integer CustomerId;
	private Integer touristId;
	private Integer userId;
	private String CoustomrType;
	private String email;
	private Character customerState;		// 订单状态 	01：未执行，02：执行
	private Date CoustomerBegTime;			// 开始时间
	private Date CoustomerEndTime;			// 结束时间
	private String setoutAddress;
	private String destination;
	private Date setoutTime;
	private Integer playDays;
	private Integer playDaysType;
	private Integer playPeoples;
	private Integer playChildren;
	private Integer budget;
	private String customTheme;
	private String remarks;
/*
  KEY `FK_Reference_11` (`user_id`),
  KEY `FK_Reference_12` (`tourist_id`),
  CONSTRAINT `FK_Reference_11` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`),
  CONSTRAINT `FK_Reference_12` FOREIGN KEY (`tourist_id`) REFERENCES `tourist_destination` (`tourist_id`)
 */
}
