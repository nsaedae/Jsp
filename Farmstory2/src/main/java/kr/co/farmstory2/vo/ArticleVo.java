package kr.co.farmstory2.vo;

public class ArticleVo {

	private int no;
	private int parent;
	private int comment;
	private String type;
	private String title;
	private String content;
	private int file;
	private int hit;
	private String uid;
	private String regip;
	private String rdate;
	
	// �߰��ʵ�
	private String fname;
	private FileVo fv;
	
	public FileVo getFv() {
		return fv;
	}
	public void setFv(FileVo fv) {
		this.fv = fv;
	}
	
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	
	private String nick;
	
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getParent() {
		return parent;
	}
	public void setParent(int parent) {
		this.parent = parent;
	}
	public void setParent(String parent) {
		this.parent = Integer.parseInt(parent);
	}
	
	public int getComment() {
		return comment;
	}
	public void setComment(int comment) {
		this.comment = comment;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getFile() {
		return file;
	}
	public void setFile(int file) {
		this.file = file;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getRegip() {
		return regip;
	}
	public void setRegip(String regip) {
		this.regip = regip;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
}
