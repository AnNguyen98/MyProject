package BietLe;

import java.util.Scanner;

public class Test2 {
	int no;
	int a[];
	int ans;

	public Test2(int no, int[] a, int ans) {
		this.no = no;
		this.a = a;
		this.ans = ans;
	}

	public static void main(String[] args) {
		Test2 test[] = new Test2[3];
		test[0] = new Test2(1, new int[] { 2, 5, 3, 8 }, 8);
		test[1] = new Test2(2, new int[] { 3 }, 3);
		test[2] = new Test2(3, new int[] { 2, 3, 3, 8, 10 }, 10);

		for (int i = 0; i < test.length; i++) {

				System.out.println(Run(test[i].no, test[i].a, test[i].ans));

		}

	}

	static int Max(int[] a) {
		int ans = 0;
		for (int i = 0; i < 4; i++)
			if (ans < a[i])
				ans = a[i];
		return ans;
	}

	static String Run(int no, int a[], int max) {
		int output = Max(a);
		if (output != max)
			return "No." + no + ":WA";
		else
			return "No." + no + ":AC";
	}

}
