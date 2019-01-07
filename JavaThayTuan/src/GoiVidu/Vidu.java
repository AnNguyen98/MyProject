package GoiVidu;

import java.awt.Point;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Scanner;

public class Vidu{
	public static void main(String []arg){
		Scanner sc = new Scanner(System.in);
		BigInteger a = sc.nextBigInteger();
		BigInteger b = sc.nextBigInteger();
		BigInteger c = gcd(a,b);
		
		System.out.println(c);
	}

	private static BigInteger gcd(BigInteger a, BigInteger b) {
		BigInteger Zero = BigInteger.ZERO;
		return b.compareTo(Zero)==0?a:gcd(b,a.mod(b));
	}
	
}
