package com.niit.bean;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ACCOUNT")
public class Account implements Serializable
{
	@Id
	@Column(name="ACC_ID")
private String acc_ID;
	@Id
	@Column(name="ACC_NAME")
private String acc_name ;
	@Id
	@Column(name="ACC_TYPE")
private String acc_Type;
public String getAcc_ID() {
	return acc_ID;
}
public void setAcc_ID(String acc_ID) {
	this.acc_ID = acc_ID;
}
public String getAcc_name() {
	return acc_name;
}
public void setAcc_name(String acc_name) {
	this.acc_name = acc_name;
}
public String getAcc_Type() {
	return acc_Type;
}
public void setAcc_Type(String acc_Type) {
	this.acc_Type = acc_Type;
}
}
