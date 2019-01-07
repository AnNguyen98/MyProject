
//  NOTE :     final int a = 1000  // cu phap hang so



package bai.tapt.rong.java_full;

import java.text.DecimalFormat;
import java.util.Scanner;

public class MoPhongMay_ATM {
      public static void main(String[] args) {
	     long soTien;
	     int soTo500 , soTo200 , soTo100 , soTo50 , soTo20  ;
	     Scanner sc = new Scanner(System.in);
	     ////////////
	     DecimalFormat dcf = new DecimalFormat("#,###");// dau cham ko dc
	     
	     
	     /////////
	     
	     
	     
	     do {
	    	 System.out.println("Moi ban nhap vao so tien muon rut (VND) :");
		     soTien = sc.nextLong();
	     }while(soTien<=0);
	     System.out.println("Ban muon rut " + soTien + "VND . " );
	     sc.close();
	    	 ///////   Nen dung if
	     soTo500 = (int)soTien/500000;
	     soTo200 = (int)(soTien - soTo500*500000)/200000;
	     soTo100 = (int)(soTien - soTo500*500000 - soTo200*200000)/100000;
	     soTo50 = (int)(soTien - soTo500*500000 - soTo200*200000 - soTo100*100000)/50000;
	     soTo20 = (int)(soTien - soTo500*500000 - soTo200*200000 - soTo100*100000 - soTo50*50000)/20000;
	    // soTo10 = (int)(soTien - soTo500*500000 - soTo200*200000 - soTo100*100000 - soTo50*50000 - soTo20*20000)/20000;
         
	     
	     System.out.println("=====================================");
	     long soTien500 = soTo500*500000;
	     System.out.println("Menh gia      So to            Thanh tien           Tong cong" );
	     System.out.println(" 500 K        " + soTo500 +"                "+   dcf.format(soTien500));
	     
	}
}
