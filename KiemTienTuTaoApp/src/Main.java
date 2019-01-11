import java.util.ArrayList;
import java.util.HashMap;

public class Main {
    public static void main(String args[]) throws InterruptedException {
        System.out.println("Hello world");
        Dog dog = new Dog("Luu",10);
        dog.move();

        int a[] = {1,23,4,5,5};
        for ( int i: a) {
            System.out.println(i);
        }

        try{

        }catch (Exception e){
            System.out.println(e.toString());
        }

        ArrayList<String> arrayList = new ArrayList<>();
        HashMap<String, Integer> hashMap = new HashMap<>();

        arrayList.add("!111");
        hashMap.put("n",1);
        System.out.println(hashMap.get("n"));


        //Da luong Thread

        SecondThread secondThread = new SecondThread();
        secondThread.start();
        secondThread.setPriority(Thread.MAX_PRIORITY);
        secondThread.sleep(10);
//        secondThread.wait();
        for(int i=0; i<10; i++)
            System.out.println("Main Thread "+ i);
    }
}

class SecondThread extends Thread{
    @Override
    public void run() {
        for(int i=0; i<10; i++)
            System.out.println("Second Thread "+ i);
    }

    @Override
    public synchronized void start() {
        super.start();
    }
}




class Person {
    private String name;
    private int age;
    Person(String name, int age){
        this.name = name;
        this.age = age;
    }
    Person(){

    }
}


interface ICanFly {
    public void fly();
}

class Verhicle{
    final public  void move(){

    }
}
class Plan extends Verhicle{
//    @Override
//    public void move() {
//        super.move();
//    }
}

abstract class Animal{
    public void eat(){

    }
    public abstract void m();
}

class Bird extends Animal implements ICanFly {

    @Override
    public void fly() {

    }

    @Override
    public void m() {

    }
}
