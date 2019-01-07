package IOTest;

import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Writer;
import java.util.Scanner;

public class NhapXuat {

	public static void main(String[] args) {
		try{
			File f = new File("c:\\tuan\\MinhTuan.java");
			Scanner sc = new Scanner(f);
			
			File f2 = new File("C:\\Users\\Pham Minh Tuan\\Desktop\\hellocopy.java");
			FileWriter fos = new FileWriter(f2);
			BufferedWriter dos = new BufferedWriter(fos);
			
			while (sc.hasNextLine()){
				dos.write(sc.nextLine());
				dos.newLine();
				//System.out.println(sc.nextLine());
			}
			dos.close();
			
		}catch(Exception e){
			System.out.println(e.getMessage());
		}

	}

}
