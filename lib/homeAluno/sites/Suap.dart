import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Suap extends StatefulWidget {
  static String tag = 'Suap';
  @override
  _SuapState createState() => _SuapState();
}

class _SuapState extends State<Suap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Suap'
        ),
      ),
      body: Center(
        child: WebView(
        initialUrl: 'https://suap.ifma.edu.br/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
      ),
    );
  }
}