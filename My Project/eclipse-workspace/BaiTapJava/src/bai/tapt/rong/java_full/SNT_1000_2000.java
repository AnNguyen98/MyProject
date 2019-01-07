package bai.tapt.rong.java_full;

public class SNT_1000_2000 {
	public static void main(String[] args) {
		System.out.println("Cac so nguyen to tu 1000 ->2000 :");
		for(int i=1000 ; i<2001 ;i++) {
			int dem = 0;
			for(int j=1 ; j <=i/2 ; j++) {
				if(i%j==0) dem++;
			}
			if(dem==1) System.out.print(i + "  ");
		}
	}
}
