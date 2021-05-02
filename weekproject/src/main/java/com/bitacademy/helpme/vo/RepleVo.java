package com.bitacademy.helpme.vo;

public class RepleVo {
	private long no;
	private String writer;
	private long parent;
	private String content;
	private long rparent;
	public long getNo() {
		return no;
	}
	public void setNo(long no) {
		this.no = no;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public long getParent() {
		return parent;
	}
	public void setParent(long parent) {
		this.parent = parent;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public long getRparent() {
		return rparent;
	}
	public void setRparent(long rparent) {
		this.rparent = rparent;
	}
}
