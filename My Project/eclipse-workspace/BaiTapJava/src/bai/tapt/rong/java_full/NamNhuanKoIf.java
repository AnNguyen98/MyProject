package bai.tapt.rong.java_full;

import java.util.Scanner;

public class NamNhuanKoIf {
	public static void main(String[] args) {
		int year ; 
		Scanner sc = new Scanner(System.in);
		year = sc.nextInt();
		sc.close();
		boolean t = ( (year%4==0 && year%100!=0)||year%400==0);
		String namNhuan = "Nam nhuan ";
		String namKoNhuan = "Nam ko nhuan ";
		String test = t ? namNhuan : namKoNhuan;
		System.out.println("\n" + test);

	}
}
