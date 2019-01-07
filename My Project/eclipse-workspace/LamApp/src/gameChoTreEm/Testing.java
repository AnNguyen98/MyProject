package gameChoTreEm;

import java.util.ArrayList;
import java.util.Random;

public class Testing {
	public static void main(String[] args) {
		final int dt = 100;
		int s  = 0;
		ArrayList<HinhHoc> arrayList = new ArrayList<>();
		while(s < dt*0.8) {
			Random rd = new Random();
			int n;
			HinhHoc hinhhoc ;
			n = rd.nextInt(3);
			
			switch(n) {
			case 0:
				TamGiac tg = new TamGiac();
				hinhhoc = tg;
				break;
			case 1:
				HinhVuong hv = new HinhVuong();
				hinhhoc = hv;
				break;
			case 2:
				HinhChuNhat hcn = new HinhChuNhat();
				hinhhoc = hcn;
			    break;
			default:
				hinhhoc = null;
				break;
			}
			if(hinhhoc != null) {
				arrayList.add(hinhhoc);

			}
			s += hinhhoc.caculate();
		}
		
		System.out.println("Dien Tich = " + s);
		
	}
}
