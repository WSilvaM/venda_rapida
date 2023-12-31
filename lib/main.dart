import 'package:flutter/material.dart';
import 'package:venda_rapida/Caixa/Tela_caixa.dart';
import 'package:venda_rapida/Clientes/TelaClientes.dart';
import 'package:venda_rapida/Delivery/TelaDelivery.dart';
import 'package:venda_rapida/Widgets.dart';
import 'package:venda_rapida/Produtos/Tela_Produtos.dart';
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
      theme: ThemeData(primarySwatch: Colors.pink),
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
      appBar: AppBar(
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: ColorsApp.primary,
        title: Padding(
          padding: const EdgeInsets.only(left: 128),
          child: Text(
            widget.title,
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
            child: Column(
                children: [
                   SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Vendas",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildCont("Hoje", ColorsApp.primary, 30, 60,ColorsApp.white),
                        buildCont("7D", ColorsApp.grey, 30, 40,ColorsApp.white),
                        buildCont("1M", ColorsApp.grey, 30, 40,ColorsApp.white),
                        buildCont("6M", ColorsApp.grey, 30, 40,ColorsApp.white),
                        buildCont("1A", ColorsApp.grey, 30, 40,ColorsApp.white),
                      ],
                    ),
                  ),
                  buildContai("R\$ 000,00", 40),
                  SizedBox(
                    height: 10,
                  ),
                  buildContai("0 venda realizada", 12)
                ],
              ),
              width: 80,
              height: 180,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500,
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
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Containerbuild(
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Tela_Caixa(),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.shopping_basket_outlined,
                          color: ColorsApp.primary,
                          size: 50,
                        ),
                      ),
                      "caixa"),
                  Containerbuild(
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Produtos(),
                            ),
                          );
                        },
                        //  Navigator.of(context).pushReplacement
                        //(MaterialPageRoute(builder: (context) => Produtos(),));
                        icon: const Icon(
                          Icons.now_widgets_outlined,
                          color: ColorsApp.primary,
                          size: 50,
                        ),
                      ),
                      "Produtos"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Containerbuild(
                      IconButton(
                        onPressed: (){
                             Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Tela_clientes(),
                            ),);
                        },
                        icon: const Icon(
                          Icons.group_outlined,
                          color: ColorsApp.primary,
                          size: 50,
                        ),
                      ),
                      "clientes"),
                  Containerbuild(
                       IconButton(
                        onPressed: (){
                             Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Tela_Delivery(),
                            ),);
                        },
                        icon: Icon(
                          Icons.moped_outlined,
                          color: ColorsApp.primary,
                          size: 50,
                        ),
                      ),
                      "Delivery"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Containerbuild(
                        const IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.insert_chart_outlined_outlined,
                            color: ColorsApp.primary,
                            size: 50,
                          ),
                        ),
                        "Relatórios"),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
