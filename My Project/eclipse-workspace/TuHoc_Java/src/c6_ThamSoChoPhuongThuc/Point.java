package c6_ThamSoChoPhuongThuc;

public class Point {
	private double x;
	private double y;
	public Point() {
		
	}
	public void Point(double x , double y) {
		this.x = x ;
		this.y = y ;
	}
	public void setPoint(double x , double y) {
		this.x = x ; 
		this.y = y;
	}
	public void printPoint() {
		System.out.println("X : " + x + " Y : "+ y );
	}
}
