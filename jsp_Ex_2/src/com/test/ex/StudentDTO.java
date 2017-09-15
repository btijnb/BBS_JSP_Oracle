/*
ex) �л������� DB�� insert (3/4)
*���� ���ؿ�: �ڵ� ���� ���� ���ɼ� ��
*
	set, get �̷���
		-set: �������� ����
		-get: return
*/

package com.test.ex;

public class StudentDTO {
	private String StudentNumber;
	private String Password;
	private String Name;
	private String Phone;
	
	public StudentDTO(){
		System.out.println("Student() ��ü ����");
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
