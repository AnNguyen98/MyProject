main(){
  print("Hello Dart!");
  myFunc();
  List<num> arr = new List();
  arr.add(100);
  print(arr);
}
myFunc(){
  print("My function!");
}

class Person{
  String name;
  int age;
  Person(String name, int age){
    this.name = name;
    this.age = age;
    print("Constructor of animal!");
  }
}
//class Student extends Person implements 