main() {
  var number = 1000;
  print("Hello World!");
  printInteger(number);

  List<int> list = new List();
  List<Object> listObject;
  list.add(100);
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }
  dynamic name = "Heeee";
  int iInt = 10;
  String str = "";
  final String n = "  sff";
  String myName = "Nguyen The An";
  String strInt = "32";
  int iInt1 = int.parse(strInt);
  print(iInt1);
  print(iInt1.runtimeType);

  String stringInt = iInt1.toString();
  print(stringInt.runtimeType);
  print(myName.toUpperCase());
  print(myName.split(" "));
  String firstName = "An";
  String lastName = "Nguyen";
  print("${firstName.toLowerCase()} $lastName");

  bool isTrue = true;
  bool isfalse = false;
  print(isfalse);

  List a = [1, 2, 4, 5, 6, 7];
  List b = [1, 3, 4, " Am ", 5, "Nguyen"];
  List<int> intlist = new List();
  intlist.add(100);
  print(intlist);
  print(a);
  a[1] = "Mot";
  print(a.runtimeType);
  print(b);

  a.insert(0, "First");
  print(a.length);

  Map<int, String> map1 = new Map();
  Map map2 = {"q": 1};
  map1[1] = "Mot";
  map1[2] = "Hai";
  print(map2.containsKey("q"));
  print(map2["q"]);
  print(map1);

  final int finalInt = 10;
  const int constInt = 10;
//  finalInt = finalInt + 10;
//  constInt += 10;

  //Arithmetic operation
  // + - * / %

  //Logical operator > < >= <= == != && ||

  //Wrap up
  num myNum = 10.9444 / 100;
  print(myNum);

  printString("Hello world!");
  print(returnString("1234"));
  buyMilk();
  int f = 1;
  if (f == 1) {
    buyMilk();
  }

  if (1 == 4) {
  } else if (1 == 2) {
  } else {}

  for (int i = 0; i < 10; i++) {
    print("i $i");
  }

  int aa = 0;
  while (aa < 10) {
    print("a $aa");
    aa++;
  }
  do {
    printString("AAAA");
  } while (aa > 100);

  switch (aa) {
    case 100:
      print("1");
      break;
    case 10:
      print("2");
      break;
    case 9:
      print("3");
      break;
    default:
      print("Default");
  }
  print(getName());
  print(sayHello("An"));

  //
  String isString = "My string!";
  print(isString is String);
  print(isString as String);
  print(isString is! String);

  int myPass = 11;
  print(myPass is int);

  if (myPass == 10) {
    printInteger(myPass);
    printString("$myPass");
  } else {
    print("$myPass is not aqual 10");
  }

  for (var i = 0; i < 10; i++) print("for $i");
  var i = 0;
  while (i < 10) {
    print("while $i");
    i++;
  }

  do {
    printInteger(i);
    i++;
  } while (i < 20);

  switch (i) {
    case 1:
      printInteger(1);
      break;
    case 2:
      printInteger(2);
      break;
    case 20:
      printInteger(20);
      break;
    default:
      print("Default!!!");
  }
  print(getName());
  printString(getName1());
  print(printName("YYYYY"));
  print(returnName("Annn"));

  returnSum1("An");
  printA(name: "An");
  mySection();

  var person1 = new Person("HHH", 20);
  person1.printName();

  //var myCar = new Car.created();
  var myCar = new Car("SWS", "yellow", 10);
  print(myCar.carName);
//  var dog = new Dog("Luu");
//  dog.move();
//  print(dog);
  var mydog1 = new Dog.created("HELLO");
  print(mydog1.name);
  Object typeDynamic = 1;
  typeDynamic = "Hello";
  print(typeDynamic);
  dynamic a1;
  List<dynamic> arr = new List();
  arr.add("AAA");
  arr.add(3);
  num varNum = 0;
  print(varNum);
}

//Inheritance

class Animal {
  String name;
//  Animal(String lu){
//    print("Animal constructor! $lu");
//  }
  Animal.created1(String name) {
    this.name = name;
    print("Animal Created!");
  }
  move() {
    print("Animal moved");
  }
}

class Dog extends Animal {
//  Dog(String name):super(name){
//    print("Dog constructor! $name ");
//  }
  Dog.created(String name) : super.created1(name) {
    print("Dog created!");
  }
  @override
  move() {
    // TODO: implement move
    super.move();
    print("Dog moved!");
  }
}

//Class

class Car {
  String carName;
  String color;
  int varient;

  Car(this.carName, this.color, this.varient);

  Car.created() {
    this.carName = "Suzuki";
    this.color = "red";
    this.varient = 5;
  }
  void setName(String carName) {
    this.carName = carName;
  }

  String getCarName() {
    return this.carName;
  }
}

class Person {
  String name;
  int age;
//  Person(){
//    this.name = "NULL";
//    this.age = 0;
//  }
//  Person(String name, int age){
//    this.name = name;
//    this.age = age;
//  }
  Person(this.name, this.age);
  printName() {
    print(name);
  }
}

mySection() {
  String email = "theannguyen98@gmail.com";
  String pass = "123456";
  bool buttonPress = true;

  if (buttonPress) {
    if (email.isNotEmpty && pass.isNotEmpty) {
      createAccount(email, pass);
    } else if (email.isNotEmpty) {
      print("Password field is empty!");
    } else if (pass.isNotEmpty) {
      print("Email field is empty!");
    } else {
      print("Email or password field is empty!");
    }
  }
}

createAccount(String email, String pass) {
  if (email.contains("@") && email.length >= 8)
    print("Account successfully created!");
  else if (email.length >= 8)
    print("Invalid mail id");
  else if (email.contains("@"))
    print("Password's length must be atleast 8");
  else
    print("Invalid Email id and Password");
}

printA({String name, int age = 0}) {
  print("Name : $name");
  print("Age : $age");
}

returnSum(List<int> list) {
  var sum = 0;
  for (var i in list) {
    sum += i;
  }
  return sum;
}

returnSum1([String name, int age]) {
  print("Age is $age");
  print("Name is $name");
}

returnName(String name) => "$name";
String getName1() => "Your name!";
String getName() {
  return "An";
}

String printName(String name) {
  return name;
}

String sayHello(String name) => "Hello $name";
//String getName()=> "Harry Potter";

printString(String str) {
  print(str);
}

printInteger(int number) {
  print('The number is : $number');
}

returnString(String str) {
  return str;
}

buyMilk() {
  print("Its working!");
}
