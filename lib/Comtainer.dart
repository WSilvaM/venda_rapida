import 'package:flutter/material.dart';

Widget buildContainer(){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 150, 
       height: 150,
       decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              offset: Offset(4.0,4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0,
            ),
            BoxShadow(
              color: Colors.white,
              offset: Offset(-4.0,-4.0),
              blurRadius: 15.0,
              spreadRadius: 1.0,
            )
          ]

          ),
          ),
  );
}