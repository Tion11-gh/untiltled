import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget CustomTextField({String?tile,String?hint,controller}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      TextFormField(
        decoration: InputDecoration(
          hintStyle: TextStyle(
            color: Colors.grey,
          ),
          hintText: hint,
          isDense: true,
          fillColor: Colors.grey.shade300,
          filled: true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.purple)),

        ),
      ),
      SizedBox(height: 5,),
    ],
  );
}