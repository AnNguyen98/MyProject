package interfaceDemo;

public class Plan extends Vehicle implements CanFly{

	@Override
	public void canFly() {
		// TODO Auto-generated method stub
		System.out.println("Plan can fly");
	}
	
}
