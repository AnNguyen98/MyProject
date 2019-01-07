
public class MyThread extends Thread{
	public void run() {
		try {
			Thread.sleep(50);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		for(int i=0 ; i<500 ; i++) {
			System.out.println("My Thread " + i*i);
		}
	}
}
