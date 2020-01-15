import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class IFMA extends StatefulWidget {
  static String tag = 'ifma';
  @override
  _IFMAState createState() => _IFMAState();
}

class _IFMAState extends State<IFMA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Portal IFMA'
        ),
      ),
      body: Center(
        child: WebView(
        initialUrl: 'https://caxias.ifma.edu.br/',
        javaScriptMode: JavaScriptMode.unrestricted ,
      ),
      ),
    );
  }
}