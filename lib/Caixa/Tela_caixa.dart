import 'package:flutter/material.dart';
import 'package:venda_rapida/Widgets.dart';

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
              Icons.menu,
              color: Colors.white,
            ),
          ),
        ],
        title: Text(
          "Negociação",
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: ListView(
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
                    child:  Text(
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
          //Quebra de linha Row rolagem
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding:  EdgeInsets.all(15),
              child: Row(
                children: [
                  buildCont(
                      "Todos", ColorsApp.primary, 30, 50, ColorsApp.white),
                  buildCont(
                      "Alimentos", ColorsApp.white, 30, 70, ColorsApp.Black),
                  buildCont("Bar e Restaurante", ColorsApp.white, 30, 120,
                      ColorsApp.Black),
                  buildCont(
                      "Bebidas", ColorsApp.white, 30, 70, ColorsApp.Black),
                  buildCont(
                      "Decoração", ColorsApp.white, 30, 70, ColorsApp.Black),
                  buildCont("Eletroportáteis", ColorsApp.white, 30, 95,
                      ColorsApp.Black),
                  buildCont(
                      "Esporte", ColorsApp.white, 30, 60, ColorsApp.Black),
                  buildCont(
                      "ferramentas", ColorsApp.white, 30, 78, ColorsApp.Black),
                  buildCont(
                      "Hortifruti", ColorsApp.white, 30, 70, ColorsApp.Black),
                  buildCont(
                      "Limpeza", ColorsApp.white, 30, 70, ColorsApp.Black),
                ],
              ),
            ),
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildContaIMG(Image.asset("images/hambuguer.png"), "hambuguer","R\$ 25,00 UN"),
              
              buildContaIMG(Image.asset("images/arroz.png"), "Parafusadeira 500w 1L","R\$ 5,99 UN"),
              buildContaIMG(Image.asset("images/aspirador_de_po.png"), "Aspirador de pó","R\$ 250 UN")
            ],
          ),
        SizedBox(height: 35,),

           Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             buildContaIMG(Image.asset("images/abacate.png"), "Abacate","R\$ 5,00 KG"),
             buildContaIMG(Image.asset("images/abajur.png"), "Abajur","R\$ 92 UN"),
             buildContaIMG(Image.asset("images/alicate_universal.png"), "Alicate ","R\$20 UN")
           ],
           ),
                SizedBox(height: 35,),
           Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             buildContaIMG(Image.asset("images/agua_sanitaria.png"), "Água sanitária 2L","R\$ 5 UN"),
             buildContaIMG(Image.asset("images/alcool_em_gel.png"), "Alcool em gel 450ml","R\$ 10,00 UN"),
             buildContaIMG(Image.asset("images/almofada.png"), "Almofada decorativa","R\$ 50,00 UN")
           ],
           ),Divider(height: 10,),
         buildElevatedButton("Pagamento")
        ],
      ),
    );
  }
}
