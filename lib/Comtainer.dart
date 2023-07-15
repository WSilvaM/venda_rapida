import 'package:flutter/material.dart';
import 'package:venda_rapida/styleCores/Cores.dart';

Widget Containerbuild(IconButton iconButton,String texto){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
         
        Container(
          child :
      Row(
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.center,
             children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10,left:30,right: 30,bottom: 15),
                  child: iconButton,
                ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 35,right: 20,bottom: 2),
                      child: Text(
                      texto,
                       style: TextStyle(
                          color: ColorsApp.black,
                           fontWeight: FontWeight.w500,
                          fontSize: 15),
                            ),
                    ),
              ],
            ),
        ],
      ),

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
                ),
                
              ]
                ),
       

              ),
      ],
    ),
  );
}