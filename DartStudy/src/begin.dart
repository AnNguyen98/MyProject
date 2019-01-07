import 'my.dart' as my;
import 'lib.dart' as lib;
import 'dart:math' as Math;
import 'dart:async' as sync;
import 'dart:core';
import 'dart:developer';
import 'dart:core';
main(){
  print("Hello");

  //Static typing
  int a = 0;
  double b = 0.0;
  String str = "string";
  num myNum = 0;
  bool myBool = true;

  //dynamic typing
  dynamic myDynamic = 10;
  Object myObjact = "a";
  //Optional typing
  String nullString = null;
  print(nullString);

  //strong vs weak typing
  const i = 10;
  final j = 100;
  print("a = $a");

  //Arithmetic operator

  int a1 = 10;
  int b1  = 3;
  a1 ++;
  print(a1 ~/b1);
  int mm = (1 > 2) ? 10:9;

  num isnana = 0/0;
//  print(isnana.isNaN);
//  print(isnana.isInfinite);
//  assert(a is String);
  print(mm);
  String parseInt = "123";
  num xx = int.parse(parseInt);

  my.myFunc();

  //as is is!
  var number = 1;
  var toSting = '11';
  print(number is bool);
  print(number is! bool);
  print(toSting as String);

  // ! || &&

  Animal animal = new Animal.initialize();
  animal.setName = "PPP";
  print(animal.getName);
  myFunction(123);

  print(yourName("An", "Nguyen", 123));
  sayHello();

  Animal animal2 = new Animal.initialize();
  print(animal2.getName);


  Teacher nga = new Teacher("Nga", 20, "Giao vient tieu hoc");
  print(nga.getName);
  nga.move();

  Location location = new Location(10, 10, 11);
  print(location.toString());

  var myMap = {
    1 : 'One',
    2 : 'Two'
  };
  var keys = myMap.keys;
  var values = myMap.values;
  print(myMap[1]);
  myMap.forEach((key, value) => print("Key : $key, value : $value"));

  var valueArr = [1,2,3,4,5,6,7,7];
  var v = valueArr.map((v)=>v);
  print(v);
  //valueArr.forEach((value) => print("value"));


  print("SUM = ${lib.sum(10, 20)}");
  lib.myLib myli = new lib.myLib();
  myli.sayHi();

  int rd = Math.sqrt(100).toInt();
  print(rd);

  int random = Math.Random().nextInt(100);
  print(random);
  try{
    var aaa = 2/0;
  }catch(e){
    print("Error ${e.toString()}");
  }finally{

  }

}
abstract class ActionLoaction{
  printX(int x);
  printY(int y);
}
class Location implements ActionLoaction{
  int x, y, z;
  Location(this.x, this.y, this.z);
  @override
  String toString() {
    // TODO: implement toString
    return 'Location x : $x, y : $y, z : $z';
  }

  @override
  printX(int x) {
    // TODO: implement printX
    print(x);
  }

  @override
  printY(int y) {
    // TODO: implement printY
    print(y);
  }
}

class Anything{
  String someone;

  Anything(this.someone);

  @override
  String toString() {
    return 'Anything{someone: $someone}';
  }
  get getSomeone => this.someone;
  set setSonmeone(String value) => this.someone = value;
}

abstract class Action{
  move();
  eat();
}

class Person{
  String name;
  int age;
  Person(String name, int age){
    this.name = name;
    this.age = age;
  }
  get getName => this.name;
  set setName(String name) => this.name = name;
  get getAge => this.age;
  set setAge(int age) => this.age = age;
}

class Teacher extends Person implements Action{
  String lecturer;
  Teacher(String name, int age, String lecturer) : super(name, age){
    this.lecturer = lecturer;
  }
  get getLecturer => this.lecturer;
  set setLecturer(String lecturer) => this.lecturer = lecturer;

  @override
  eat() {
    // TODO: implement eat
    print("Teacher eating");
  }

  @override
  move() {
    // TODO: implement move
    print("Teacher moving");
  }
}

class Dog extends Animal{
  Dog.initialize() : super.initialize();
}
class Animal{
  String name;
//  set setName(String name) => this.name = name;
  Animal.initialize(){
    this.name = "An";
  }
  set setName(String name) => this.name = name;
  get getName => this.name;
//  set setName(value) => this.name = value;
//  get getName => this.name;
}

sayHello(){
  print("Hello");
  sayHi(){
    print("Hiii");
  }

}

String yourName(String firstName, String lastName, [int age]){
  var finalResult  = "$firstName $lastName ";
  if(age == null){
    finalResult += "And null age";
  }else{
    finalResult += "is $age age.";
  }
  return finalResult;
}
myFunction(value) => print(value);

