import 'dart:async';

import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
Widget func({
  String name='input your name',
  //IconData icon=Icons.phone,
  IconData? sicon,
  IconData? picon,
  String label='Name',
  Color? namec,
  Color? siconc,
  Color? piconc
  }){
  return TextField(
    decoration: InputDecoration(
      //icon: Icon(icon),
      suffixIcon: Icon(sicon,color: siconc,),
      prefixIcon: Icon(picon,color: piconc,),
      helperText: name,
      helperStyle: TextStyle(color: namec),
      labelText: label,
     // labelStyle: TextStyle(color: namec),
      border: OutlineInputBorder(
        
        borderRadius: BorderRadius.circular(8)
      )
    ),
  );
}
Widget task10(){
  return 
    MaterialApp(

      debugShowCheckedModeBanner: false,
      home: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          body: Container(
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.all(20),
            child:Column(
              children: [
                func(label: 'Name',picon: Icons.person,piconc: Colors.blue,namec: Colors.blue),gun(),
                func(label: 'Last Name',picon: Icons.person,piconc: Colors.blue, name: 'input your last name',namec: Colors.blue),gun(),
                tanc(label: 'School',sicon: Icons.school,siconc: Colors.indigo,name: 'school number',namec: Colors.indigo),gun(),
                tanc(label: 'grade',sicon: Icons.star,siconc: Colors.indigo, name: 'input grade',namec: Colors.indigo),gun(),
                humo()
              ],
            )
          ),
        ),
      ),
    );
}
Widget tanc({
  String name='input your name',
  //IconData icon=Icons.phone,
  IconData? sicon,
  IconData? picon,
  String label='Name',
  Color? namec,
  Color? siconc,
  Color? piconc
  }){
  return TextField(
    decoration: InputDecoration(
      helperStyle: TextStyle(color: namec),
     // labelStyle: TextStyle(color: namec),
      //icon: Icon(icon),
      suffixIcon: Icon(sicon,color: siconc,),
      //prefixIcon: Icon(picon,color: piconc,),
      helperText: name,
      labelText: label,
      border: OutlineInputBorder(
        
        borderRadius: BorderRadius.circular(8)
      )
    ),
  );
}

TextField humo() {
  return TextField(
              keyboardType: TextInputType.phone,
              controller: TextEditingController(text: '+998 '),
              decoration:InputDecoration(
                //alignLabelWithHint: false,
                //enabled: false,
                //isDense: true,
                //isCollapsed: false,
                helperText: 'Input your phone number.',
                helperStyle: TextStyle(color: Colors.indigo),
                //hintText: "+998",
                //hintStyle: TextStyle(color: Colors.pink),
                //errorText: '',
                //prefixIcon:Icon(Icons.people),
                //suffixIcon: Icon(Icons.search),
                //labelText: 'input text',
                suffixIcon: Icon(Icons.star,color: Colors.indigo,),
                border: OutlineInputBorder(
                  
                  borderSide:BorderSide(style: BorderStyle.none,color: Colors.blue),
                  borderRadius: BorderRadius.circular(8)
                )
              )
            );
}
Widget gun(){
  return SizedBox(height: 15,);
}