package bai.tapt.rong.java_full;

import java.util.Scanner;

public class XepHinh {
	public static void main(String[] args) {
		int n;
		Scanner sc = new Scanner(System.in);
		n = sc.nextInt();
		sc.close();
		for(int i=0 ; i<n ; i++) {
			for(int j=0 ;j<n ; j++) {
				if(j>i)System.out.print(" * ");
				else System.out.print("   ");

			}
			System.out.println();
		}
	}
}
