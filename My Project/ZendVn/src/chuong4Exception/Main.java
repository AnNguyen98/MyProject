package chuong4Exception;

public class Main {
	public Main() {
		//chia cho 0
		System.out.println("Nhan the ATM:");
		try {
			System.out.println(5/0);
		} catch (Exception e) {
		System.out.println("Er : " + e);
		e.getMessage();
		}
		System.out.println("Tra the ATM:");
		//truy cap phan tu khong ton tai
		int a[] = {1,2,3,4};
		try {
			System.out.print(a[4]);
		} catch (Exception e) {

		}
		System.out.println("");

	}
}
