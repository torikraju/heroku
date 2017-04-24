package com.noticeBoard.model;

public class chat {

	private String name;
	private String message;

	public chat() {

	}

	public chat(String name, String message) {
		this.name = name;
		this.message = message;
	}

	public chat(String message) {
		this.message = message;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		return "chat [name=" + name + ", message=" + message + "]";
	}

}
