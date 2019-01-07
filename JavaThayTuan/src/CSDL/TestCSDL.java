package CSDL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;

public class TestCSDL {

	public static void main(String[] args) {
		try{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			Connection conn = 
					DriverManager.getConnection("jdbc:odbc:TuanODBC");
			System.out.println("OK");

			Statement s = conn.createStatement();
			ResultSet r = s.executeQuery("Select * from HOCVIEN");
			ResultSetMetaData rm = r.getMetaData();
			int col = rm.getColumnCount();
			for (int i=1;i<=col;i++){
				System.out.print(rm.getColumnName(i)+"\t");
			}
			System.out.println();
			while (r.next()){
				for (int i=1;i<=col;i++){
					System.out.print(r.getObject(i)+"\t");
				}
				System.out.println();
			}
			
			
		}catch(Exception e){
			System.out.println("Error");
		}

	}

}
