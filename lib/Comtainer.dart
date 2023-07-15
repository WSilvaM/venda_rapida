import 'package:flutter/material.dart';
import 'package:venda_rapida/styleCores/Cores.dart';

Widget Containerbuild(IconButton iconButton,){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      child:iconButton,
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