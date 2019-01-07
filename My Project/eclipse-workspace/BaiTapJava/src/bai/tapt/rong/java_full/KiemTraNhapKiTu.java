package bai.tapt.rong.java_full;
import java.io.*;

public class KiemTraNhapKiTu {
	public static void main(String[] args) {
		char ch = 0;
		System.out.println("Nhap ki tu :");
		try {
			ch = (char)System.in.read();
		}
		catch(Exception e) {
			System.out.println("Nhap loi!!");
		}
		System.out.println("Ki tu vua nhap : "+ ch);
	}
}
