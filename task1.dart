import 'package:flutter/material.dart';

Widget task1() {
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
                labelText: 'input your name'
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
