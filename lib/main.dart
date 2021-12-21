// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors, unnecessary_string_interpolations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget button(String btnText) {
    return Expanded(
      child: RawMaterialButton(
        onPressed: () {},
        child: Text(
          "$btnText",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        shape: Border.all(color: Colors.black, width: 1),
        fillColor: Colors.black12,
        padding: EdgeInsets.all(28),
        splashColor: Colors.black,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
          backgroundColor: Colors.black12,
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                    color: Colors.black12,
                  ),
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text(
                    "OUTPUT",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Row(
                children: [
                  button("7"),
                  SizedBox(
                    width: 8,
                  ),
                  button("8"),
                  SizedBox(
                    width: 8,
                  ),
                  button("9"),
                  SizedBox(
                    width: 8,
                  ),
                  button("/"),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  button("4"),
                  SizedBox(
                    width: 8,
                  ),
                  button("5"),
                  SizedBox(
                    width: 8,
                  ),
                  button("6"),
                  SizedBox(
                    width: 8,
                  ),
                  button("x"),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  button("1"),
                  SizedBox(
                    width: 8,
                  ),
                  button("2"),
                  SizedBox(
                    width: 8,
                  ),
                  button("3"),
                  SizedBox(
                    width: 8,
                  ),
                  button("-"),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  button("0"),
                  SizedBox(
                    width: 8,
                  ),
                  button("c"),
                  SizedBox(
                    width: 8,
                  ),
                  button("="),
                  SizedBox(
                    width: 8,
                  ),
                  button("+"),
                ],
              ),
              SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
