package bai.tapt.rong.java_full;

public class In15SoNguyenToDauTien {
      public static void main(String[] args) {
			int snt =0;

		System.out.println("15 so nguyen to dau tien : ");
		for(int i=1 ; i<1000 ; i++ ) {
			int dem =0;
			for(int j=1; j<=i/2 ; j++ ) {
				if(i%j==0) dem++;
			}
			if(dem==1) {
				System.out.println(i + "   ");
				snt++;
			}
			if(snt==15 ) break;
		}
	}
}
