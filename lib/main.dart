import 'package:flutter/material.dart';

import 'package:venda_rapida/Comtainer.dart';
import 'package:venda_rapida/styleCores/Cores.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch:Colors.pink ,
      ),
      home: const MyHomePage(title: 'Venda Rapida'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(backgroundColor: ColorsApp.primary,
        
        title: Center(child: Text(widget.title,)),
      ),
      body:
      
      
       ListView(children: [
        Padding(
          padding: const EdgeInsets.all(25),
          child: Container(width: 80,
          height: 200, decoration: BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.circular(20),
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
        ),
         Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Containerbuild(IconButton(
                  onPressed: null, icon: Icon
                  (Icons.shopping_basket_outlined, 
                  color: ColorsApp.primary,size: 50,)),"caixa"),
                Containerbuild(IconButton(onPressed: null,
                 icon: Icon(Icons.now_widgets_outlined,color: ColorsApp.primary,size: 50,)),"Produtos"),
              ],
            ),
             Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Containerbuild(IconButton(onPressed: null, icon: Icon(Icons.group_outlined,
            color: ColorsApp.primary,size: 50,
            ),),"clientes"),
            Containerbuild(IconButton(onPressed: null, icon: Icon
            (Icons.moped_outlined,color: ColorsApp.primary,size: 50,)),"Delivery"),
          ],
          
        ),
         Padding(
           padding: const EdgeInsets.only(left: 30),
           child: Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              
              Containerbuild(IconButton(onPressed: null, 
              icon: Icon(Icons.insert_chart_outlined_outlined,color:
               ColorsApp.primary,size: 50,)),"Relatórios"),
            ],
            
               ),
         )
           ],
          ),
          ],
      )
      

     
    );
  }
}
