import 'package:flutter/material.dart';

import './products.dart';

class ProductAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Products'),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return ProductsPage();
                }));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(title: Text('Manage Products')),
      body: Center(
        child: Text('Manage your products'),
      ),
    );
  }
}
