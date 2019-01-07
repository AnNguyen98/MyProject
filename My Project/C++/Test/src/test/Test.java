/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

/**
 *
 * @author AnNguyen
 */
public class Test {

    /**
     * @param args the command line arguments
     */
    //public  static int s = 1;
    public static void main(String[] args) {
        // TODO code application logic here
//        System.out.println("  " + DeQuy(10));
//        VongLap(10);
          System.out.println(0010011111111);
    }
    public  static int DeQuy(int a){
        if (a == 0) {
            return 1;
        }else{
            return  a * DeQuy(a-1);
        }
    }
    public static void VongLap(int a){
        int s = 1;
        for (int i=1;i <= a;i++){
            s *= i;
        }
        System.out.println(a + "! = " + s);
    }
}
