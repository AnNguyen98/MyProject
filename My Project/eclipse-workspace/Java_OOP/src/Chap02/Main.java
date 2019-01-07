package Chap02;

import Chap01.Teacher;

public class Main {
	public static void main(String[] args) {
		Student student = new Student();
		//Teacher teacher = new Teacher();
		student.setAge(19);
		student.setName("An");
		System.out.println(student.getAge());
		System.out.println(student.getName());

		System.out.println(student);
		System.out.println(student.toString());
	}
}
