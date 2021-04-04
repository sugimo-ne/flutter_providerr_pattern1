import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main_model.dart';

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
        home: ChangeNotifierProvider<MainModel>(
            create: (_) => MainModel(),
            child: Scaffold(
                appBar: AppBar(
                  title: Text("text"),
                ),
                body: Consumer<MainModel>(
                  builder: (context, model, child) {
                    return Center(
                        child: Column(children: [
                      Text(model.text, style: TextStyle(fontSize: 30)),
                      RaisedButton(
                          onPressed: () {
                            model.changeText();
                            print(model.text);
                          },
                          child: Text('iii'))
                    ]));
                  },
                ))));
  }
}
