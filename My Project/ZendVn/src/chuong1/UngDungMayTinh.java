package chuong1;

import java.util.Scanner;

public class UngDungMayTinh {
	public static void main(String[] args) {
		int numberFirst;
		int numberSecond;
		Scanner sc = new Scanner(System.in);
		numberFirst = sc.nextInt();
		sc.nextLine();
		numberSecond = sc.nextInt();
		sc.nextLine();
		String s ;
		System.out.println("\nNhap {+ - x :} :");
		s = sc.nextLine();
		sc.close();
		int num=0 ;
		switch (s) {
		case "+":
			num = numberFirst + numberSecond;
			break;
		case "-":
			num = numberFirst - numberSecond;
			break;
		case "*":
		case "x":
			num = numberFirst * numberSecond;
			break;
		case "/":
		case ":":
			num = numberFirst / numberSecond;
			break;
		default:
			System.out.println("Ban nhap sai!!");
			break;
		}
		System.out.println(numberFirst + s + numberSecond + " = " + num);
	}
}
