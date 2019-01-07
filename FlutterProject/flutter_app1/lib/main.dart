import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  final wordPair = WordPair.random();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Welcome to flutter",
      home: Scaffold(
        body: Center(
          //child: Text('Hello World'),
          //child: Text(wordPair.asPascalCase),
          child: RandomWords(),
        ),
      ),
    );
  }
}
class RandomWordsState extends State<RandomWords>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
//    final wordPair = WordPair.random();
//    return Text(wordPair.asPascalCase);
    final _suggestions = <WordPair>[];
    final _biggerFont   = const TextStyle(fontSize: 18);
    Widget _buildRow(WordPair pair){
      return ListTile(
        title: Text(
          pair.asPascalCase,
          style: _biggerFont,
        ),
      );
    }
    Widget _buildSuggestions(){
      return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder:(context, i){
          if(i.isOdd) return Divider();
          final index = i~/2;
          if(index >= _suggestions.length){
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        }
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Startup Name Gennerator "),
      ),
      body: _buildSuggestions(),
    );
  }
}

class RandomWords extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new RandomWordsState();
  }
}