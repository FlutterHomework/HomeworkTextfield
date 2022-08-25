import 'package:flutter/material.dart';

Widget task8() {
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
                suffixIcon: Icon(Icons.search),
                prefixIcon: Icon(Icons.people),
                helperText: 'Input your name.',
                labelText: 'Input text',
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
