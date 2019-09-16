import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grocery_list_app/pages/homepage_screen.dart';
import 'package:grocery_list_app/pages/login_screen.dart';
import 'package:provider/provider.dart';

class GroceryListApp extends StatelessWidget {
  const GroceryListApp();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<FirebaseUser>.value(
          value: FirebaseAuth.instance.onAuthStateChanged,
        ),
      ],
      child: MaterialApp(
        title: 'GroceryListApp',
        debugShowCheckedModeBanner: false,
        home: StreamBuilder(
          stream: FirebaseAuth.instance.onAuthStateChanged,
          builder: (BuildContext context, snapshot) {
            if (snapshot.hasData) return HomePageScreen();
            return LoginScreen();
          },
        ),
      ),
    );
  }
}
