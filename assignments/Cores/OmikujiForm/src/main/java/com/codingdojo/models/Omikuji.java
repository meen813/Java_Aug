package com.codingdojo.models;

public class Omikuji {
	
	private Integer number;
	private String city;
	private String person;
	private String hobby;
	private String type;
	private String somethingNice;
	
	
	public Omikuji(Integer number, String city, String person, String hobby, String type, String somethingNice) {
		super();
		this.number = number;
		this.city = city;
		this.person = person;
		this.hobby = hobby;
		this.type = type;
		this.somethingNice = somethingNice;
	}


	public Integer getNumber() {
		return number;
	}


	public void setNumber(Integer number) {
		this.number = number;
	}


	public String getCity() {
		return city;
	}


	public void setCity(String city) {
		this.city = city;
	}


	public String getPerson() {
		return person;
	}


	public void setPerson(String person) {
		this.person = person;
	}


	public String getHobby() {
		return hobby;
	}


	public void setHobby(String hobby) {
		this.hobby = hobby;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public String getSomethingNice() {
		return somethingNice;
	}


	public void setSomethingNice(String somethingNice) {
		this.somethingNice = somethingNice;
	}

	
	
}

	
