import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProudctCreatePageState();
  }
}

class _ProudctCreatePageState extends State<ProductCreatePage> {
  String titleValue;
  String descriptionValue;
  double priceValue;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Product Title'),
              onChanged: (String value) {
                setState(() {
                  titleValue = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Product Description'),
              maxLines: 4,
              onChanged: (String value) {
                setState(() {
                  descriptionValue = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Product Price'),
              keyboardType: TextInputType.number,
              onChanged: (String value) {
                setState(() {
                  priceValue = double.parse(value);
                });
              },
            ),
          ],
        ));
  }
}
