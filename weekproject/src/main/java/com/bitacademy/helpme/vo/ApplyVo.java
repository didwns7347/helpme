package com.bitacademy.helpme.vo;

public class ApplyVo {
	private long userno;
	private long boardno;
	private long no;
	private String state;
	

	
	@Override
	public String toString() {
		return "ApplyVo [userno=" + userno + ", boardno=" + boardno + ", no=" + no + ", state=" + state + "]";
	}
	public long getUserno() {
		return userno;
	}
	public void setUserno(long userno) {
		this.userno = userno;
	}
	public long getBoardno() {
		return boardno;
	}
	public void setBoardno(long boardno) {
		this.boardno = boardno;
	}
	public long getNo() {
		return no;
	}
	public void setNo(long no) {
		this.no = no;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
}
