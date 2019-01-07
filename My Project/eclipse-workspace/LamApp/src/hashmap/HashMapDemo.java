package hashmap;

import java.io.ObjectOutputStream.PutField;
import java.util.HashMap;

public class HashMapDemo {
	public static void main(String[] args) {
		HashMap<Integer, String> hashMap = new  HashMap<Integer, String>();
		hashMap.put(1, "An");
		hashMap.put(2, "Nam");
		hashMap.put(3, "Son");
		hashMap.put(4, "Den");
		System.out.println( " 4 : " + hashMap.get(4));
		
		System.out.println(hashMap.containsKey(1));
		System.out.println(hashMap.isEmpty());
		System.out.println(hashMap.keySet());
		System.out.println(hashMap.toString());
		
	}
}
