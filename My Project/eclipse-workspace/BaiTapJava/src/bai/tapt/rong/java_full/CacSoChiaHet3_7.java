package bai.tapt.rong.java_full;

public class CacSoChiaHet3_7 {
	public static void main(String[] args) {
		System.out.println("Cac so be hon 100 chia het cho 3&7 :");
		for(int i=7 ; i<100 ;i++) {
			if(i%3==0 && i%7==0) System.out.print(i+  "  ");
		}
		System.out.println("\nCac so trong 1000-2000 chia het cho 3 & 5 & 7 :");
		for(int i=1000 ; i<2000 ;i++) {
			if(i%3==0 && i%7==0 && i%5==0) System.out.print(i+  "  ");
		}
	}
}
