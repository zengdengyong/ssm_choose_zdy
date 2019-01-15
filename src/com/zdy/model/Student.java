package com.zdy.model;

import lombok.AllArgsConstructor;


import lombok.Data;
import lombok.NoArgsConstructor;
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Student {
	private Integer sId;
	private String sName;
	private String sPassword;
	private String sEmail;
	private Integer sAge;
	private String sPhotoUrl;
	private String sUrl;
	private String sRemark;
}
