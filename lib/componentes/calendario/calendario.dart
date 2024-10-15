import 'package:flutter/material.dart';
import 'package:projf_estuda_facil/componentes/calendario/linha_de_datas.dart';
import 'package:projf_estuda_facil/componentes/calendario/linha_numeros.dart';

class Calendario extends StatelessWidget {
  const Calendario({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        LinhaNumeros(),
        LinhaDeDatas(diaSemana: 'Segunda', corFundo: Colors.blue),
        LinhaDeDatas(diaSemana: 'Terça', corFundo: Colors.purple),
        LinhaDeDatas(diaSemana: 'Quarta', corFundo: Colors.red),
        LinhaDeDatas(diaSemana: 'Quinta', corFundo: Colors.orange),
        LinhaDeDatas(diaSemana: 'sexta', corFundo: Colors.yellow),
        LinhaDeDatas(diaSemana: 'Sábado', corFundo: Colors.green),
        LinhaDeDatas(diaSemana: 'Domingo', corFundo: Colors.amber),
      ],
    );
  }
}