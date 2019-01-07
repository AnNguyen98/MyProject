package bai.tapt.rong.java_full;

public class Mang {

	public static void main(String[] args) {
		int a[] = {2,6,4,9,2,6,10,3,1,1,2,1};
		
		for(int i=0 ; i<a.length ; i++)
			System.out.print(a[i] + "  ");
		int t=0;
		for(int i=1; i < a.length; i++) {		
			for(int b=a.length-1; b >= i; b--)
			{ 
			if(a[b-1] > a[b]) {
			  t = a[b-1];
			  a[b-1] = a[b];
			  a[b] = t;
			}
		  }
		}
		System.out.println("\n==============");
		
		for(int i=0 ; i<a.length ; i++)
			System.out.print(a[i] + "  ");

	}

}
