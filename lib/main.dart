import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:venda_rapida/Comtainer.dart';

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
       
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildContainer( ),
              buildContainer(),
            ],
          ),
           Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildContainer( ),
          buildContainer(),
        ],
        
      ),
       Padding(
         padding: const EdgeInsets.only(left: 30),
         child: Row(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
            buildContainer(),
          ],
          
             ),
       )
     ],
    )
      

     
    );
  }
}
