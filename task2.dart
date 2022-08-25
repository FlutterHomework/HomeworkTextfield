import 'package:flutter/material.dart';

Widget task2() {
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
                filled: true,
                fillColor: Colors.blue,
                labelText: 'input your name',
                border: OutlineInputBorder(
                  //borderSide:BorderSide(style: BorderStyle.none,color: Colors.blue),
                  //borderRadius: BorderRadius.circular(12)
                )
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
