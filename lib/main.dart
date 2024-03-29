import 'package:flutter/material.dart';
import 'package:web_shoppfront/components/home_screen.dart';
import 'package:web_shoppfront/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        color:  Colors.green,
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            scaffoldBackgroundColor: kBackgroundColor,
            primaryColor: kPrimaryColor,
            textTheme:Theme.of(context).textTheme.apply(bodyColor: kTextColor)

        ),
        home: HomeScreen());
  }
}

