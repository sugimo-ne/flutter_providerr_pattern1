import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text(text),
            ),
            body: Center(
                child: Column(
              children: [
                Text(text, style: TextStyle(fontSize: 30)),
                RaisedButton(
                    onPressed: () {
                      print(text);
                    },
                    child: Text('iii'))
              ],
            ))));
  }
}
