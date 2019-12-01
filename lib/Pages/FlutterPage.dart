import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'dart:async';

class FlutterPage extends StatefulWidget{
  @override
  _FlutterPageState createState() => _FlutterPageState();

}

class _FlutterPageState extends State<FlutterPage>{

  String url = "https://flutter.dev";
  final flutterWebviewPlugin = new FlutterWebviewPlugin();
  StreamSubscription<WebViewStateChanged> _onchanged;

  @override
  void initState() {
    super.initState();
    _onchanged = flutterWebviewPlugin.onStateChanged.listen((WebViewStateChanged state){

      if(mounted) {
        if(state.type == WebViewState.finishLoad) {
          print("loaded...");
        } else if(state.type == WebViewState.abortLoad) {
          print("there is a problem...");
        } else if(state.type == WebViewState.startLoad) {
          print("start loading...");
        }
      }
    });

  }

  @override
  void dispose() {
    super.dispose();
    flutterWebviewPlugin.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: url,
      withJavascript: true,
      withZoom: true,
      hidden: true,

      appBar: AppBar(
        title: Text("Flutter"),
        centerTitle: false,
        elevation: 2,
        iconTheme: IconThemeData(color: Colors.white),
        actions: <Widget>[
          InkWell(
            child: Icon(Icons.refresh),
            onTap: (){
              flutterWebviewPlugin.reload();
            },
          ),

          InkWell(
            child: Icon(Icons.stop),
            onTap: (){
              flutterWebviewPlugin.stopLoading();
            },
          ),
          InkWell(
            child: Icon(Icons.remove_red_eye),
            onTap: (){
              flutterWebviewPlugin.show();
            },
          ),
          InkWell(
            child: Icon(Icons.close),
            onTap: (){
              flutterWebviewPlugin.hide();
            },
          ),
          InkWell(
            child: Icon(Icons.arrow_back),
            onTap: (){
              flutterWebviewPlugin.goBack();
            },
          ),

          InkWell(
            child: Icon(Icons.arrow_forward),
            onTap: (){
              flutterWebviewPlugin.goForward();
            },
          ),

        ],
      ),

      initialChild: Container(
        color: Colors.white,
        child: const Center(
          //child: Text("waiting"),
          child: CircularProgressIndicator(
            backgroundColor: Colors.purple,
            strokeWidth: 30.0,
          ),
        ),
      ),
      appCacheEnabled: false,
    );
  }

}
