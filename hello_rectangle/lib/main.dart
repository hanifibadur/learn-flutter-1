import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'mycolor.dart';

class HelloRectangle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.green,
        height: 300.0,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Text(
            'Hello!',
            style: TextStyle(fontSize: 16.0),
          ),
        ),
      ),
    );
  }
}

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          brightness: Brightness.light,
          title: Text(
            'Hello Rectangle',
            style: TextStyle(color: MyColor.black),
          ),
        ),
        body: HelloRectangle(),
      ),
    ),
  );
}
