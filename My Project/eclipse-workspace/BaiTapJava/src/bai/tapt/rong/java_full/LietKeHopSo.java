package bai.tapt.rong.java_full;

import java.util.Scanner;

public class LietKeHopSo {
    public static void main(String[] args) {
		int n;
		Scanner sc = new Scanner(System.in);
		System.out.println("Nhap vao N = ");
		n = sc.nextInt();
		System.out.println("\nHop so tu 1->" + n + " la :");
		for(int i=1 ; i<=n ; i++) {
			int dem = 0;
			for(int j=1 ; j<=i/2 ; j++) {
				if(i%j==0) dem++;
			}
			if(dem>1) System.out.print(i + "    ");
		}
	}
}
