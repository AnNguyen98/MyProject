
public class threadDemo {
	public static void main(String[] args) {
		MyThread myThread = new MyThread();
		myThread.setPriority(Thread.MAX_PRIORITY);
		myThread.start();
		for(int i=0 ; i<500 ; i++) {
			System.out.println("Main Thread : "+ i*i);
		}
		
	}
}
