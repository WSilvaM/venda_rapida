import 'package:flutter/material.dart';
import 'package:venda_rapida/Produtos/Tela_Produtos.dart';
import 'package:venda_rapida/styleCores/Cores.dart';

Widget Containerbuild(IconButton iconButton, String texto) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Container(
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 30, right: 30, bottom: 15),
                    child: iconButton,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 35, right: 20, bottom: 2),
                    child: Text(
                      texto,
                      style: TextStyle(
                          color: ColorsApp.Black,
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
                color: ColorsApp.grey,
                offset: Offset(4.0, 4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0,
              ),
              const BoxShadow(
                color: Colors.white,
                offset: Offset(-4.0, -4.0),
                blurRadius: 15.0,
                spreadRadius: 1.0,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildCont(
    String texto, Color ColorsApp, double Height, double Width, col) {
  return Row(
    children: [
      Container(
        alignment: Alignment.center,
        child: Text(
          texto,
          style: TextStyle(color: col, fontWeight: FontWeight.w400),
        ),
        height: Height,
        width: Width,
        decoration: BoxDecoration(
          color: ColorsApp,
          borderRadius: BorderRadius.circular(7),
        ),
      ),
      SizedBox(
        width: 10,
      ),
    ],
  );
}

Widget buildContai(
  String tex,
  double font,) {
  return  Container(
    child: Column(
      children: [
        Text(
          tex,
          style: TextStyle(fontSize: font, fontWeight: FontWeight.w800),
        ),
      ],
    ),
  );
}

Widget buildContaIMG(Image image, String nome, String Quilo){
  return Container(width: 90,height:120,
    child: Wrap(
      children: [image,
      Text(nome,
      ), Text(Quilo,style: TextStyle(color: ColorsApp.grey),)
      ],
    ),
  );
}

Widget buildElevatedButton(String nome) {
  return Padding(
    padding: const EdgeInsets.only(top: 25, left:25,right:25,bottom: 20),
    child: ElevatedButton(
      onPressed: null,
      child: Text(nome),
      style: ElevatedButton.styleFrom(
          minimumSize: Size(55, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          )),
    ),
  );
}
