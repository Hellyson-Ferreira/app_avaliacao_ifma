import 'package:flutter/material.dart';

class Downloads extends StatefulWidget {
  static  String tag = 'downloads';
  @override
  _DownloadsState createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Downloads'),
      ),
      body: Center(
        child: Icon(Icons.file_download,size: 300,),
      )
    );
  }
}