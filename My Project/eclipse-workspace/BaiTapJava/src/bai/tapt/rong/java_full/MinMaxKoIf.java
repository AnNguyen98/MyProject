package bai.tapt.rong.java_full;

import java.util.Scanner;

public class MinMaxKoIf {
	public static void main(String[] args) {
		int a , b, c, d , min , max;
		Scanner sc = new Scanner(System.in);
		a = sc.nextInt();
		sc.nextLine();
		b = sc.nextInt();
		sc.hasNextLine();
		c = sc.nextInt();
		sc.hasNextLine();
		d = sc.nextInt();
		sc.close();
		min = (((a < b) ? a : b) < ((c < d) ? c : d)) ? ((a < b) ? a : b) : ((c < d) ? c : d)  ;
		max = (((a > b) ? a : b) > ((c > d) ? c : d)) ? ((a > b) ? a : b) : ((c > d) ? c : d)  ;
		System.out.println("Min = " + min);
		System.out.println("Max = " + max);

	}
}
