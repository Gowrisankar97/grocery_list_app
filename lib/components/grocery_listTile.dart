import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery_list_app/models/grocery_list.dart';
import 'package:grocery_list_app/utils/date_helper.dart';

class GroceryListTile extends StatelessWidget {
  final GroceryList gl;

  const GroceryListTile({Key key, this.gl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = gl.active ? Colors.red : Colors.grey;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: color,
        elevation: 15.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(color: Colors.black)),
        child: ListTile(
          title: Text(gl.title),
          trailing: gl.active
              ? null
              : Text(DateHelper.getStringFromDate(gl.finishDate)),
          onTap: () {
            print(gl.title);
          },
        ),
      ),
    );
  }
}
