import 'package:flutter/material.dart';

import './pages/auth.dart';
import './pages/product_admin.dart';
import './pages/products.dart';
import './pages/product.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<Map<String, String>> _products = [];

  void _addProducts(Map<String, String> product) {
    setState(() {
      _products.add(product);
    });
  }

  void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blueGrey,
          accentColor: Colors.blueAccent),
      routes: {
        '/': (BuildContext context) {
          return ProductsPage(_products, _addProducts, _deleteProduct);
        },
        '/admin': (BuildContext context) {
          return ProductAdminPage();
        }
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElement = settings.name.split('/');
        if (pathElement[0] != '') {
          return null;
        }
        if (pathElement[1] == 'product') {
          final int index = int.parse(pathElement[2]);
          return MaterialPageRoute<bool>(
              builder: (BuildContext context) => ProductPage(
                  _products[index]['title'], _products[index]['image']));
        }
        return null;
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext contexy) =>
                ProductsPage(_products, _addProducts, _deleteProduct));
      },
      // home: AuthPage()
    );
  }
}
