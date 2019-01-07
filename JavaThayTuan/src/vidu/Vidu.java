package vidu;

import java.util.Scanner;

public class Vidu {
	public static void main(String[] arg) {
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		int m = sc.nextInt();
		String[] a = new String[n];
		for (int i = 0; i < n; i++) {
			a[i] = sc.next();
		}
		boolean checkhang[] = new boolean[n];
		for (int i = 0; i < n; i++) {
			checkhang[i] = true;
			for (int j = 0; j < m; j++)
				if (a[i].charAt(j) == '#')
					checkhang[i] = false;
		}

		boolean checkcot[] = new boolean[m];
		for (int j = 0; j < m; j++) {
			checkcot[j] = true;
			for (int i = 0; i < n; i++)
				if (a[i].charAt(j) == '#')
					checkcot[j] = false;
		}
		
		for (int i = 0; i < n; i++) {
			for (int j = 0; j < m; j++)
				if (checkhang[i] || checkcot[j]){
					
				} else {
					System.out.print(a[i].charAt(j));
				}
			if (!checkhang[i])
				System.out.println();
		}
	}
}
