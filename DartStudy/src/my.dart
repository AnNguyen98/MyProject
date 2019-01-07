main(){
  print("Hello Dart!");
  myFunc();
  List<num> arr = new List();
  List brr = [1,2,4,5,6];
  arr.add(100);
  print(arr);
  brr.add(100);
  brr.addAll([11,22,33,22]);
  print(brr);
  Map myMap = {1:"one", 2:"two", 3:"three"};
  Map <int, String> mm = {1:"one", 2:"two", 3:"three"};
  mm.clear();
  print(mm);
  Set mySet = new Set();
  // Set mySet1 = {1,2,3,4};
  mySet.addAll([1,2,3,4]);
  mySet.add(111);
  print(mySet.toList());
  List list = mySet.toList();
  brr.toSet();

  {
    int laa = 10;
  }
  //print(laa);

  num sum1 = 0, sum2 = 0;
  for(int i=0; i<1000; i++){
    if(i % 3 == 0 || i % 5 == 0) sum1 += i;
    if(i/3 == i~/3 || i/5 == i~/5) sum2 += i;
  }
  print("SUM1 = $sum1");
  print("SUM2 = $sum2");
  var myF = myFunc();
  myF;
  myF;

  List brr1 = [1,2,4,5,6];
  brr1.forEach((e) => print(e));

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