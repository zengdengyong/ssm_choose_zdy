package com.zdy.model;

import lombok.AllArgsConstructor;


import lombok.Data;
import lombok.NoArgsConstructor;
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Student {
	private Integer stuId;
	private String stuName;
	private String stuPassword;
	private String stuEmail;
	private Integer stuAge;
	private String stuPhotoUrl;
	private String stuUrl;
	private String stuRemark;
}
