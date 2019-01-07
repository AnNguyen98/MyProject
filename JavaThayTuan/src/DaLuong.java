
public class DaLuong {

	public static void main(String[] args) {
		new DaLuong();
	}
	public DaLuong(){
		ClassAbc o1 = new ClassAbc();
		o1.start();
		ClassDef o2 = new ClassDef();
		o2.start();
	}

	
}
class ClassAbc extends Thread{
	public void run(){
		for (int i=0;i<1000;i++){
			System.out.println("abc:"+i);
			try {
				Thread.sleep(50);
			} catch (InterruptedException e) {
			}
		}
	}
}

class ClassDef extends Thread{
	public void run(){
		for (int i=0;i<1000;i++){
			System.out.println("def:"+i);
			try {
				Thread.sleep(50);
			} catch (InterruptedException e) {
			}
		}
	}
}



