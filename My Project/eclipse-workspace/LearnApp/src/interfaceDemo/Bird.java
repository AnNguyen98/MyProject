package interfaceDemo;

public class Bird extends Animal implements CanFly  {

	@Override
	public void canFly() {
		System.out.println("Bird can fly");
	}
	
}
