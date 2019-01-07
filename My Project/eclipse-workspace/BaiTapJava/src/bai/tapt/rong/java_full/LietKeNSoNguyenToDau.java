package bai.tapt.rong.java_full;

public class LietKeNSoNguyenToDau {
	public static void main(String[] args) {
		int k=0 ,n,j=0;
		while(j>15) {
			int i=0;
			k++;
			for(n=2 ; n<k ; n++) {
				if(k%n==0) i++;
			}
		}
	}
}
