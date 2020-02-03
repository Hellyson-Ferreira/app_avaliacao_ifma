import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class IFMA extends StatefulWidget {
  static String tag = 'ifma';
  final url;
  IFMA(this.url);
  @override
  _IFMAState createState() => _IFMAState('https://caxias.ifma.edu.br/');
}

class _IFMAState extends State<IFMA> {
  var _url;
  final _key = UniqueKey();
  _IFMAState(this._url);
  num _stackToView = 1;

  void _handleLoad(String value) {
    setState(() {
      _stackToView = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Portal IFMA'
        ),
      ),
      body: IndexedStack(
        index: _stackToView,
        children: [
          Column(
            children: < Widget > [
              Expanded(
                child: WebView(
                  key: _key,
                  javascriptMode: JavascriptMode.unrestricted,
                  initialUrl: _url,
                  onPageFinished: _handleLoad,
                )
              ),
            ],
          ),
          Container(
            color: Colors.white,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ],
      )
    );
  }
}