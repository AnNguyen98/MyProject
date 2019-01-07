package overrideSample;

public class Override_Shape extends Shape {
	@Override
	protected int caculateAre() {
		System.out.println("caculateAre Over");
		return 1;
	}
	
}
