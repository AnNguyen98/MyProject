package chuong1;

import java.util.Scanner;

public class DiTimAnSo {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int an = (int)(Math.random()*6 + 4);
		int number ;
		do {
			System.out.println("Nhap vao so ::");
			number = sc.nextInt();
			sc.nextLine();
			//sc.close();
			if(number < an) System.out.println("An so lon hon !");
			if(number > an) System.out.println("An so be hon !");
			if(number == an) System.out.println("Win !!!!");
		} while (number != an);
		
		
	}
}
