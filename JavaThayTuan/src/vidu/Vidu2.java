package vidu;

public class Vidu2 {

	public static void main(String[] args) {
		Vidu4 a = new Vidu4(); 
		a.abc();
		a.xyz();
	}
	
	public void abc(){
		System.out.println("abc");
	}
}

abstract class Vidu3{
	public abstract void abc();
	public void xyz(){
		System.out.println("xxx");
	}
}

class Vidu4 extends Vidu3{
	public void abc() {
		System.out.println("aaaaa");
	}
}

interface Vidu5{
	public void abc();
}

class Vidu6 implements Vidu5{

	@Override
	public void abc() {
		// TODO Auto-generated method stub
		
	}
	
}

