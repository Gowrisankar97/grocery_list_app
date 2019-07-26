import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProductGridView extends StatelessWidget {
  final DocumentSnapshot document;

  const ProductGridView({Key key, this.document}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String name = document['name'];
    return GestureDetector(
      onTap: () => _showDialog(context, name),
      child: Card(
        color: Colors.red,
        child: Center(
          child: Text(
            name,
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }

  _showDialog(BuildContext context, String name) {
    double width = MediaQuery.of(context).size.width / 3;
    double height = MediaQuery.of(context).size.height / 4;

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              name,
              textAlign: TextAlign.center,
            ),
            content: Container(
              width: width,
              height: height,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/example.jpg'))),
              ),
            ),
          );
        });
  }
}
