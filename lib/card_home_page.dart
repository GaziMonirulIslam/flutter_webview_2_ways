import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'dart:async';
import 'Pages/GooglePage.dart';
import 'Pages/FacebookPage.dart';
import 'Pages/YoutubePage.dart';
import 'Pages/FlutterPage.dart';

class MyCardHomePage extends StatefulWidget {
  @override
  _MyCardHomePageState createState() => _MyCardHomePageState();
}

class _MyCardHomePageState extends State<MyCardHomePage>{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      padding: const EdgeInsets.all(20.0),
      child: Scrollbar(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("View All Websites", style: TextStyle(fontSize: 25.0, letterSpacing: 1.0, color: Colors.white),),
                ),
                Card(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => GooglePage())
                      );
                    },
                    splashColor: Colors.green,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisSize : MainAxisSize.min,
                          children: <Widget>[
                            Icon(Icons.g_translate, size: 50,),
                            Text("Google", style: new TextStyle(fontSize: 18.0))
                          ],
                        ),
                      ),
                    ),
                  ),
                  elevation: 6.0,
                ),

                Card(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => YoutubePage())
                      );
                    },
                    splashColor: Colors.red,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisSize : MainAxisSize.min,
                          children: <Widget>[
                            Icon(Icons.video_library, size: 50, color: Colors.red,),
                            Text("Youtube", style: new TextStyle(fontSize: 18.0))
                          ],
                        ),
                      ),
                    ),
                  ),
                  elevation: 6.0,
                ),
                Card(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => FacebookPage())
                      );
                    },
                    splashColor: Colors.blueAccent,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisSize : MainAxisSize.min,
                          children: <Widget>[
                            Icon(Icons.contact_mail, size: 50, color: Colors.blue,),
                            Text("Facebook", style: new TextStyle(fontSize: 18.0))
                          ],
                        ),
                      ),
                    ),
                  ),
                  elevation: 6.0,
                ),
                Card(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => FlutterPage())
                      );
                    },
                    splashColor: Colors.lightBlue,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          mainAxisSize : MainAxisSize.min,
                          children: <Widget>[
                            Icon(Icons.laptop_chromebook, size: 50, color: Colors.purple,),
                            Text("Flutter", style: new TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold))
                          ],
                        ),
                      ),
                    ),
                  ),
                  elevation: 6.0,
                ),
              ],
            ),
        ),
      ),
    );
  }

}