import 'package:flutter/material.dart';
import 'package:venda_rapida/Widgets.dart';

import '../Produtos/Produtos.dart';
import '../Produtos/ProdutosRepositories.dart';
import '../StyleCores/Cores.dart';

class Tela_Caixa extends StatefulWidget {
  const Tela_Caixa({super.key});

  @override
  State<Tela_Caixa> createState() => _Tela_CaixaState();
}

class _Tela_CaixaState extends State<Tela_Caixa> {
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
        title: Text(
          "Negociação",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(9.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Produtos",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Resumo",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            ),
          ),

           Wrap(
             children: 
               [Row(
                
                 children: [
                  buildCont("Todos", ColorsApp.primary, 30, 50, ColorsApp.white),
                  buildCont(
                      "Alimentos", ColorsApp.white, 30, 70, ColorsApp.Black),
                  buildCont("Bar e Restaurante", ColorsApp.white, 30, 120,
                      ColorsApp.Black),
                  buildCont("Bebidas", ColorsApp.white, 30, 70, ColorsApp.Black),
                  buildCont(
                      "Decoração", ColorsApp.white, 30, 70, ColorsApp.Black),
                  buildCont("Eletroportáteis", ColorsApp.white, 30, 70,
                      ColorsApp.Black),
                  buildCont("Esporte", ColorsApp.white, 30, 70, ColorsApp.Black),
                  buildCont(
                      "ferramentas", ColorsApp.white, 30, 70, ColorsApp.Black),
                  buildCont(
                      "Hortifruti", ColorsApp.white, 30, 70, ColorsApp.Black),
                  buildCont("Limpeza", ColorsApp.white, 30, 70, ColorsApp.Black),
               
               
               
               
               
               
               
                ],
               ),
             ],
           ),

        ],
      ),
    );
  }
}
