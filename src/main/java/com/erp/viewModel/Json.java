package com.erp.viewModel;

public class Json {
	private String title="提示";
	private String message;
	private boolean status=false;
	
	public String getMessage() {
		return message;
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}
	
}
