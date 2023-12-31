import 'package:flutter/material.dart';
import 'package:venda_rapida/Produtos/ProdutosRepositories.dart';
import 'package:venda_rapida/StyleCores/Cores.dart';
import 'package:venda_rapida/Widgets.dart';

class Produtos extends StatefulWidget {
  const Produtos({super.key});

  @override
  State<Produtos> createState() => _ProdutosState();
}

class _ProdutosState extends State<Produtos> {
  @override
  Widget build(BuildContext context) {
    final tabela = ProdutosRepository.tabela;
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
        title: Center(
            child: Text(
          "Produtos",
        )),
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int Produtos) {
            return ListTile(
              leading: Image.asset(tabela[Produtos].icone),
              title: Text(tabela[Produtos].nome),
              trailing: Text(
                tabela[Produtos].preco.toString(),
              ),
            );
          },
          padding: EdgeInsets.all(16),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: tabela.length),
      floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(
            Icons.add,
          ),
          backgroundColor: ColorsApp.primary),
    );
  }
}
