import 'package:flutter/material.dart';

import './pages/auth.dart';
import './pages/product_admin.dart';
import './pages/products.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blueGrey,
          accentColor: Colors.blueAccent),
      routes: {
        '/': (BuildContext context) {
          return ProductsPage();
        },
        '/admin': (BuildContext context) {
          return ProductAdminPage();
        }
      },
      // home: AuthPage()
    );
  }
}
