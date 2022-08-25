import 'package:flutter/material.dart';

Widget task4() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(30),
          child: Center(
            child: TextField(
              
              decoration: InputDecoration(
                filled: false,
                fillColor: Colors.blue,
                labelText: 'input your name',
                labelStyle: TextStyle(color: Colors.pink),
                border: OutlineInputBorder(
                  borderSide:BorderSide(style: BorderStyle.none,color: Colors.blue),
                  borderRadius: BorderRadius.circular(12)
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.pink)
                )
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
