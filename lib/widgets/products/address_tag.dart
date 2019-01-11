import 'package:flutter/material.dart';

class AddressTag extends StatelessWidget {
  final String address;
  AddressTag(this.address);
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      child: Padding(
        child: Text(address),
        padding: EdgeInsets.symmetric(vertical: 2.5, horizontal: 5.0),
      ),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.circular(5.0)),
    );
  }
}
