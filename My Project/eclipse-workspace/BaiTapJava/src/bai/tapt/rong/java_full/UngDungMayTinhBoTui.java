package bai.tapt.rong.java_full;

import java.util.Scanner;

public class UngDungMayTinhBoTui {
	public static void main(String[] args) {
		double numberfirst;
		double numbersecond;
		System.out.println("Nhap vao so thu 1 : ");
		Scanner sc = new Scanner(System.in);
		numberfirst = sc.nextDouble();
		sc.hasNextLine();
		System.out.println("Nhap vao so thu 2 : ");
		numbersecond = sc.nextDouble();
		sc.nextLine();
		String a ; 
		System.out.println("Nhap phep tinh:");
		a = sc.nextLine();
		sc.close();
		switch (a) {
		case "+":
			System.out.println(numberfirst + " + "+ numbersecond  + " = "+numberfirst + numbersecond );
			break;
		case "-":
			double t = numberfirst - numbersecond;
			System.out.println(numberfirst + " - "+ numbersecond  + " = "+ t );
			break;
		case "x":
			System.out.println(numberfirst + " x "+ numbersecond  + " = "+numberfirst*numbersecond );
			break;
		case ":":
			System.out.println(numberfirst + " : "+ numbersecond  + " = "+numberfirst/numbersecond );
			break;

		default:
			System.out.println("Ban nhap sai!!");
			break;
		}
		
	}
}
