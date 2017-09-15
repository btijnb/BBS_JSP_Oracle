/*
ex) 학생정보를 DB에 insert (3/4)
*원리 이해용: 코드 실행 오류 가능성 유
*
	set, get 이뤄짐
		-set: 전역변수 세팅
		-get: return
*/

package com.test.ex;

public class StudentDTO {
	private String StudentNumber;
	private String Password;
	private String Name;
	private String Phone;
	
	public StudentDTO(){
		System.out.println("Student() 객체 생성");
	}
	
	public StudentDTO(String StudentNumber, String Password, String Name, String Phone){
		this.StudentNumber=StudentNumber;
		this.Password=Password;
		this.Name=Name;
		this.Phone=Phone;
	}
	
//--Set----------------------------------------------
	public void setHakbun(String StudentNumber){
		System.out.println("setStudentNumber(): "+StudentNumber);
		this.StudentNumber=StudentNumber;
	}
	
	public void setPassword(String Password){
		System.out.println("setPassword(): "+Password);
		this.Password=Password;
	}
	
	public void setName(String Name){
		System.out.println("setName(): "+Name);
		this.Name=Name;
	}
	
	public void setPhone(String Phone){
		System.out.println("setPhone(): "+Phone);
		this.Phone=Phone;
	}

	
//--Get----------------------------------------------
	
	public String getStudentNumber(){
		return StudentNumber;
	}
	
	public String getPassword(){
		return Password;
	}
	
	public String getName(){
		return Name;
	}
	
	public String getPhone(){
		return Phone;
	}
}
