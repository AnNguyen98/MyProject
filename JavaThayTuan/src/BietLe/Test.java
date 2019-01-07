package BietLe;

import java.util.Scanner;

public class Test {
	int no;
	int a[];
	int ans;

	public Test(int no, int[] a, int ans) {
		this.no = no;
		this.a = a;
		this.ans = ans;
	}

	public static void main(String[] args) {
		Test test[] = new Test[3];
		test[0] = new Test(1, new int[] { 2, 5, 3, 8 }, 8);
		test[1] = new Test(2, new int[] { 3 }, 3);
		test[2] = new Test(3, new int[] { 2, 3, 3, 8, 10 }, 10);

		for (int i = 0; i < test.length; i++) {
			try {
				Run(test[i].no,test[i].a,test[i].ans);
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
		}

	}

	static int Max(int[] a) {
		int ans = 0;
		for (int i = 0; i < 4; i++)
			if (ans < a[i])
				ans = a[i];
		return ans;
	}

	static void Run(int no, int a[], int max) throws Exception {
		int output = Max(a);
		if (output != max)
			throw new Exception("No." + no + ":WA");
		else
			throw new Exception("No." + no + ":AC");
	}

}
