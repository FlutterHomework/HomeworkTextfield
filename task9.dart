import 'package:flutter/material.dart';

Widget task9() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(30),
          child: Center(
            child: TextField(
              keyboardType: TextInputType.phone,
              controller: TextEditingController(text: '+998'),
              decoration: InputDecoration(
                //suffixIcon: Icon(Icons.search),
                prefixIcon: Icon(Icons.call),
                helperText: 'Input your name.',
                labelText: 'Input number',
                labelStyle: TextStyle(color: Colors.black),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(
                  color: Colors.black
                )),
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
