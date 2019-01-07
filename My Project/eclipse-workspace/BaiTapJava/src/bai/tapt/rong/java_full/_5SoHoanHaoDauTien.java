package bai.tapt.rong.java_full;

public class _5SoHoanHaoDauTien {
	public static void main(String[] args) {
		System.out.println("5 so hoan hao dau tien la : ");
		int dem = 0;
		int j = 2;
		while(dem<=5){
			int s = 0;
			for(int i=1 ; i<j ; j++)
				if(j%i==0) s += i;
			
			if(s == j){ 
				System.out.print(j + "   ");
				dem++;
			}
			j++;
			//if(dem>5) break;
		}
	}
}
