/*

ex) 학생정보를 DB에서 조회(select)/ 구조(5/5)

	StudentDAO.java -> StudentDTO.java -> FrontCon.java(끝)

*/

package com.test.ex;

public class StudentDTO {
	private String hakbun;
	private String pw;
	private String name;
	private String hp;
	
	public StudentDTO(){
		System.out.println("Student() 객체 생성");
	}
	public StudentDTO(String hakbun, String pw, String name, String hp){
		this.hakbun=hakbun;
		this.pw=pw;
		this.name=name;
		this.hp=hp;
	}
	

	public String getHakbun() {		
		return hakbun;
	}
	public String getPw() {
		return pw;
	}
	public String getName() {
		return name;
	}
	public String getHp() {
		return hp;
	}


	public void setHakbun(String hakbun) {
		System.out.println("setHakbun(): "+hakbun);
		this.hakbun = hakbun;
	}
	public void setPw(String pw) {
		System.out.println("setPw(): "+pw);
		this.pw = pw;
	}	
	public void setName(String name) {
		System.out.println("setName(): "+name);
		this.name = name;
	}
	public void setHp(String hp) {
		System.out.println("setHp(): "+hp);
		this.hp = hp;
	}	
}
