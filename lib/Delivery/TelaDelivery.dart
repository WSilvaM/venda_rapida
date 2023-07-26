import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:venda_rapida/StyleCores/Cores.dart';
import 'package:venda_rapida/Widgets.dart';

class Tela_Delivery extends StatefulWidget {
  const Tela_Delivery({super.key});

  @override
  State<Tela_Delivery> createState() => _Tela_DeliveryState();
}

class _Tela_DeliveryState extends State<Tela_Delivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsApp.primary,
        title: Text(
          "Delivery",
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top:20,right: 290, bottom: 15),
          child: Text("Pedidos",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
        ),
        buildClient("25/07/2023", "Raimunda Pereira Lopes\n Rua 13 de maio,423,\nJoão Pessoa,PB - CEP:5406-430"),
        Divider(),
        buildClient("25/07/2023", "Simone Silva Lima\n Rua 13 de maio,423,\nJoão Pessoa,PB - CEP:5406-430"),
        Divider(),
        buildClient("25/07/2023", "Adriano Gomes Machado\n Rua 13 de maio,423,\nJoão Pessoa,PB - CEP:5406-430"),
        Divider(),
        buildClient("25/07/2023", "Raimundo ferreira Lopes\n Rua 13 de maio,423,\nJoão Pessoa,PB - CEP:5406-430"),
        Divider(),
        buildClient("25/07/2023", "Paulo Roberto Sousa\n Rua 13 de maio,423,\nJoão Pessoa,PB - CEP:5406-430"),
        Divider(),
      ],),
       floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(
            Icons.add,
          ),
          backgroundColor: ColorsApp.primary),
    );
  }
}
