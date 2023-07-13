import 'package:flutter/material.dart';

Widget buildContainer(){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      width: 150, 
       height: 150,
       decoration: BoxDecoration(
        color: Colors.amber,
          borderRadius: BorderRadius.circular(12),
          ),
          ),
  );
}