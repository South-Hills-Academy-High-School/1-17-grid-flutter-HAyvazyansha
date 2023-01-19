import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: '1-17 App',
        theme: ThemeData(),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier{
  var opacityList = [1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0];
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var appSatate=context.watch<MyAppState>();

    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3
          ),
        itemBuilder: (context, index) {
          return Opacity(
            opacity: 0.5,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: SizedBox(
                  height: 50,
                  width: 50,
                child: Material(
                  color: Colors.blueGrey[700],
                  child: InkWell(
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRFwOPcKY9t6pNOYFxesDrzwruCxPgICCXeJg&usqp=CAU'),
                      onTap: (){},
                  ),
                  ),
              ),
              ),
          );
          },
        ),
    );
  }
}