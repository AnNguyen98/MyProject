package gameForChildren;

import java.util.ArrayList;
import java.util.Random;

public class GameMain {
	public static void main(String[] args) {
		final int s = 100;
		int total = 0;
		
		
		//define arraylist of shape
		ArrayList<Shape> arrShape = new ArrayList<>();
		//
		while(total <= s*0.8) {
			//generate random  a shape
			Random rd = new Random();
			int typeShape = rd.nextInt(3);
			Shape shape;
			
			switch (typeShape) {
			case 0:
				shape = new Cicle();
				break;
			case 1:
				shape = new Rectangle();
				break;
			case 3:
				shape = new Triangle();
				break;
			default:
				shape = null;
				break;
			}
			
			if (shape != null) {
				arrShape.add(shape);
			}
			
			for (Shape x : arrShape) {
				total += x.caculateArea();
			}
			
		}
		System.out.println("\n\nDien tich = "+ total);
	}
}
