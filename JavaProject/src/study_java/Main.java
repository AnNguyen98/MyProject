package study_java;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class Main {
    public static void main(String[] args ){
        HashMap<String, Integer> myHashMap = new HashMap<>();
        myHashMap.put("Two",2);
        myHashMap.put("One",1);
        //myHashMap.clear();
        Iterator iterator = myHashMap.entrySet().iterator();
        while (iterator.hasNext()){
            Map.Entry pair = (Map.Entry) iterator.next();
            System.out.println("Key = " + pair.getKey() + " Value = " + pair.getValue());
        }

    }
}
