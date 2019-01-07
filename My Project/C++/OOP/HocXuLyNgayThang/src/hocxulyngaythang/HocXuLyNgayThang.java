package hocxulyngaythang;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 *
 * @author AnNguyen
 */
public class HocXuLyNgayThang {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Calendar cal = Calendar.getInstance();
        int year = cal.get(Calendar.YEAR);
        int month = cal.get(Calendar.MONTH);
        int day = cal.get(Calendar.DAY_OF_WEEK);
        int hour = cal.get(Calendar.HOUR_OF_DAY);
        
        System.out.println("Year = " + year);
        System.out.println("Hour ò day = " + hour);
        
        
        Date t = cal.getTime();// trả về tất cả giờ /phút /giây hiện tại 
        SimpleDateFormat spf = new SimpleDateFormat("dd/MM/YYYY");
        System.out.println("Hom nay   " + spf.format(t));// hiển thị dữ liệu leen theo cách của ta 
         
        SimpleDateFormat spf1 = new SimpleDateFormat("dd/M/YY");
        System.out.println("Hom nay 1 : " + spf1.format(t));
        
        SimpleDateFormat spf3 = new SimpleDateFormat("HH:MM:ss");
        System.out.println("Gio 1 : " + spf3.format(t));
        
        SimpleDateFormat spf4 = new SimpleDateFormat("HH:MM:ss   aaa");
        System.out.println("Gio 2 : " + spf4.format(t));
        
    }
}
