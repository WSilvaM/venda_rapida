import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:venda_rapida/StyleCores/Cores.dart';
import 'package:venda_rapida/Widgets.dart';

class Tela_clientes extends StatefulWidget {
  const Tela_clientes({super.key});

  @override
  State<Tela_clientes> createState() => _Tela_clientesState();
}

class _Tela_clientesState extends State<Tela_clientes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsApp.primary,
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
        title: Text(
          "Clientes",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
           
           SizedBox(height: 25,),
            buildClientes("Sofia da Silva Ribeiro","123.456.789-00"),
            Divider(),
            buildClientes("Pedro Almeida Santos","987.654.321-01"),
            Divider(),
            buildClientes("Isabella Pereira Costa","555.888.777-99"),
            Divider(),
            buildClientes("Lucas Gomes Oliveira", "999.000.111-22"),
            Divider(),
            buildClientes("Mia Rodrigues Martins", "777.333.222-11"),
            Divider(),
            buildClientes("Gabriel Ferreira Souza", "444.555.666-33"),
            Divider(),
            buildClientes("Valentina dos Santos Lima","222.444.888-44"),
            Divider(),
            buildClientes("Enzo Oliveira Rocha","333.444.555-66"),
            Divider(),
            buildClientes("Emília Silva Pereira","114..222.111-99"),
            Divider(),
            buildClientes("Matias Fernandes Alves","666.222.357-54"),
            Divider(),
            buildClientes("Rafael Costa Barbosa","114.568.777-00"),
            Divider(),
            buildClientes("Aurora Almeida Moreira","555.111.333-22"),
            Divider(),
            buildClientes("Nico Mendes Carvalho","114.444.777-54"),
            Divider(),
          ],
        ),
      ),
       floatingActionButton:FloatingActionButton(onPressed: (){},child: Icon(Icons.add),)
    );
  }
}
