import 'dart:convert';
main(){
  // List list = <int>[1,2,3,4,5,6,7,8,9,0];
  // var a = standard(100);
  // //list.forEach((e) => print(e));
  // list.where((e) => e < 6).forEach((e)=>print(e));
  // print(standard(100));
  // print(a);
  // print(fibonaci(3));
  // double x = 4.122222;
  // print(x.toStringAsFixed(2));
  // print("3 >> 1 = ${3 >> 1}");
  // print("3 << 1 = ${3 << 1}");
  // print("3 | 1 = ${3 | 1}");
  // var s = 'String'" Hello";
  // print(s);
  // var s1 = """
  // 3
  // rffv
  // gdre
  //  """;
  // print(s1);
  // var s2 = '''
  // 1
  // 3
  // 4
  // 56hd
  // gefre
  // ''';
  // print(s2);

  // var runsArr = s.runes.toList();
  // print(runsArr);

  // StringBuffer str = new StringBuffer("Heeee");
  // for(int i=0; i<5; i++)
  //   str.write('Looo');
  // print(str);
  // print(s.startsWith("He"));

  // try{
  //   dynamic foo = true;
  //   print(foo++); // Runtime error    
  // }catch(e){
  //   print("Error $e");
  // }finally{
  //   print("OOOOOO");
  // }
  // test1();
  // test3();

  // DateTime date = DateTime.now();
  // print(date.toString());

  //print(list.sort((a,b)=>a.compareTo(b)));
  var jsonString = '''
  [
    {"score": 40},
    {"score": 80}
  ]
''';

List scores = jsonDecode(jsonString);

print(scores[0]['score']);


}

test1() async {
  await test3();
  for(int i=0;i<10; i++)
    print("III = $i");
} 
test3() async {
  for(int i=11;i<20; i++)
    print("III = $i");
} 
standard(int first){
  reurnFunc(int second){
    return first + second;
  }
  return reurnFunc(10);
}

fibonaci(int number){
  if(number < 2) return number;
  return fibonaci(number-1) + fibonaci(number-2);
}