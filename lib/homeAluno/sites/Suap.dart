import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Suap extends StatefulWidget {
  static String tag = 'Suap';
  final url;
  Suap(this.url);
  @override
  _SuapState createState() => _SuapState('https://suap.ifma.edu.br/');
}

class _SuapState extends State<Suap> {
  
  var _url;
  final _key = UniqueKey();
  _SuapState(this._url);
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
          'Suap'
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
