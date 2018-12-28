import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Food Tester'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(10.0),
                child:
                    RaisedButton(child: Text('Add Product'), onPressed: () {})),
            Column(
                children: _products
                    .map((p) => Card(
                          child: Column(
                            children: <Widget>[
                              Image.asset('assets/food.jpg'),
                              Text('Food Paradise')
                            ],
                          ),
                        ))
                    .toList())
          ],
        ),
      ),
    );
  }
}
