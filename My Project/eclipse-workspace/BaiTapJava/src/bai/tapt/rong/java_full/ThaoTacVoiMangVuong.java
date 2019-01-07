package bai.tapt.rong.java_full;

import java.util.Arrays;
import java.util.Scanner;

public class ThaoTacVoiMangVuong {
	public static void main(String[] args) {
		int n;
		System.out.println("Nhap vao N = ");
		Scanner sc = new Scanner(System.in);
		n = sc.nextInt();
		int [][]a = new int[n][n];
		System.out.println("\nNhap vao cac phan tu cua ma tran :");
		for(int i=0 ; i<n ;i++) {
			for(int j=0 ; j<n ; j++) {
				a[i][j] = sc.nextInt();
			}
		}
		sc.close();
		System.out.println("\nMa tran vua nhap :");
		for(int i=0 ; i<n ;i++) {
			for(int j=0 ; j<n ; j++) {
                 System.out.print(a[i][j] + "  ");
			}
			System.out.println("\n");
		}
		System.out.println("\nCac phan tu tren duong cheo chinh:");
		for(int i=0 ; i<n ; i++) {
			for(int j=0 ; j<n ;j++) {
				if(j>i) System.out.print(a[i][j] + "  "); //(j<i) (j==i) kt
			}
		}
		System.out.println("\nCac phan tu duoi duong cheo chinh:");
		for(int i=0 ; i<n ; i++) {
			for(int j=0 ; j<n ;j++) {
				if(j<i) System.out.print(a[i][j] + "  "); //(j<i) (j==i) kt
			}
		}
		System.out.println("\nCac phan tren duong cheo chinh:");
		for(int i=0 ; i<n ; i++) {
			for(int j=0 ; j<n ;j++) {
				if(j==i) System.out.print(a[i][j] + "  "); //(j<i) (j==i) kt
			}
		}
		
		/// Max moi dong va tinh tong
		int num=0;
		for(int i=0 ; i<n ; i++) {
			int max=a[i][0];
				for(int j=1 ; j<n ; j++) {
				    if(a[i][j]>max) max = a[i][j];
				}
			    System.out.println("\nMax[" + i + "] = " + max);
			num += max ;
		}
		System.out.println("Tong Max = " + num);
		// Phan tu lon nhat trong ma tran
		int max = a[0][0];
		for(int i=0 ; i< a.length ; i++) {
			for(int j=0 ; j<a.length ; j++ ) {
				if(a[i][j]>max) max = a[i][j];
			}
		}
		System.out.println("Max = " + max);
		
		
		
		/// Sap xep ma tran tang dan
		
		for(int i=0 ;i<a.length ; i++) {
			Arrays.sort(a[i]);
			System.out.println(Arrays.toString(a[i]));
		}
		
		System.out.println("\nMang sau khi sap xep :");
		for(int i=0 ; i<n ; i++) {
			for(int j=0 ; j<n ; j++) {
				System.out.print(a[i][j] + "  ");
			}
			System.out.println("\n");
		}
		System.out.println("======");
		System.out.println(Arrays.deepToString(a));
		
	}
}
