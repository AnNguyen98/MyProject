package chuong1;

import java.util.Scanner;

public class XuLyThapHinh {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int n;
		System.out.println("Nhap N :");

		do {
			n = sc.nextInt();
			if(n<0) System.out.println("Nhap N>0 :");
		} while (n<0);
		
/*		//hinh 1
		for(int i=0 ; i<n ; i++) {
			for(int j=0 ; j<=i ;j++) System.out.print(" * ");
			System.out.println();
		}
		//hinh 2
		System.out.println("====================");
		for(int i=n ; i>0 ;i--) {
			for(int j =0 ; j<i ; j++) System.out.print(" * ");
		    System.out.println();
		}
		
		 //hinh 3
		System.out.println("====================");
		for(int i=n-1 ; i >=0 ; i--) {
			for(int j=0 ; j<=i ; j++) {
				System.out.print(" ");
			}
			for(int j=1 ;j<=n-i ;j++) {
				System.out.print("*");
			}
			System.out.println();
		}
		
		// hinh 4
		System.out.println("====================");
		for(int i=n-1 ; i >=0 ; i--) {
			for(int j=1 ;j<=n-i ;j++) {
				System.out.print("*");
			}
			for(int j=0 ; j<=i ; j++) {
				System.out.print(" ");
			}
			System.out.println();
		}
		
		//hinh 5
		System.out.println("====================");

				for(int i=1 ; i<=n ; i++) {
					for(int j=1 ; j<=i ;j++) System.out.print(j);
					System.out.println();
				}
		
		//hinh 6
		System.out.println("====================");

		for(int i=n ; i>0 ; i--) {
			for(int j=1 ; j<=i ;j++) System.out.print(j);
			System.out.println();
		}
		
		// hinh 7
		System.out.println("====================");
		for(int i=n ; i>=1 ; i--) {
			for(int j=1 ; j<i ;j++) System.out.print(" "); 
			for(int j=n-i+1 ; j>=1 ; j--) System.out.print(j);
			for(int j=2 ; j<=n-i+1 ;j++) System.out.print(j); 
			for(int j=i ; j>0 ;j--) System.out.print(" "); 

			System.out.println();
		}
		
		
		//hinh 8
		System.out.println("====================");
		for(int i=0 ; i<n ;i++) {
			for(int j=0; j<n ; j++) {
				if(i==0 || i==n-1) System.out.print("*");
				else {
					if(j==0 || j==n-1) System.out.print("*");
					else System.out.print(" ");
				}
			}
			System.out.println();
		}
		
		//hinh 9
		System.out.println("====================");
		for(int i=n ; i>=1 ; i--) {
			for(int j=1 ; j<i ;j++) System.out.print(" "); 
			for(int j=1 ; j<=n-i+1 ; j++) System.out.print("*");
			for(int j=1 ; j<n-i+1 ;j++) System.out.print("*"); 
			for(int j=i ; j>0 ;j--) System.out.print(" "); 

			System.out.println();
		}
*/		
		
		System.out.println("======================");
		for(int i=0 ; i<n ; i++) {
			for(int j=0 ; j<n ; j++) {
				if(i==0 || i==n-1 || i==j) System.out.print("*");
				else System.out.print(" ");
			}
			System.out.println();
		}
		
		
		System.out.println("======================");
		for(int i=n ; i>=1 ; i--) {
			for(int j=0 ; j<n-i ; j++) {
				System.out.print(" ");
			}
			for(int j=1 ; j<=i ; j++) {
				System.out.print(j);
			}
			System.out.println();
		}

		
		System.out.println("======================");
		int k=1;
		while(k<=n) {
			for(int i=1 ; i<=n-k ; i++) System.out.print(" ");
			for(int i=k ; i>=1 ; i--) System.out.print(i);
			k++;
			System.out.println();
		}
		
		System.out.println("======================");
		for(int i=0 ; i<n ; i++) {
			for(int j=0 ; j<n ; j++) {
				if(i==0 || j==n-1 || i==n-1 || j==0 || i==j) System.out.print("*");
				else System.out.print(" ");
			}
			System.out.println();
		}
		
		

	}
}
