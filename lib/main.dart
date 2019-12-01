
import 'package:flutter/material.dart';
//import 'test_home_page.dart';
import 'card_home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      title: 'The Complete WebView in Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyCardHomePage(),
    );
  }
}












































//import 'package:flutter/material.dart';
//import 'package:webview_flutter/webview_flutter.dart';
////import 'home_page.dart';
//import 'test_home_page.dart';
//
//void main() => runApp(MaterialApp(
//  title: "Flutter Browser",
//  theme: ThemeData(
//    primarySwatch: Colors.deepOrange,
//  ),
//  home: MyHomePage(),
//));
//
//
//

//import 'package:flutter/material.dart';
//
//import 'test_home_page.dart';
//
//void main() => runApp(MyApp());
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      debugShowCheckedModeBanner: false,
//      title: 'The Complete WebView in Flutter',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: MyHomePage(),
//    );
//  }
//}

