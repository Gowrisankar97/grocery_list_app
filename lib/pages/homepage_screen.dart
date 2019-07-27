import 'package:flutter/material.dart';
import 'package:grocery_list_app/components/custom_appbar.dart';

class HomePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        Text("HomePage"),
      ),
      body: Center(child: Text("HomePage")),
    );
  }
}
