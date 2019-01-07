package bai.tapt.rong.java_full;

public class InBanCuuChuong {
    public static void main(String[] args) {
    	    int j=1;
		while(j<=10) {
			for(int i=2 ; i<10 ;i++) {
				System.out.print(i + " x "+ j +" = "+ j*i + "\t");
			}
			System.out.println();
			j++;
			
		}
	}
}
