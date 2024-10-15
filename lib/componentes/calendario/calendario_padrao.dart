import 'package:flutter/material.dart';
import 'package:projf_estuda_facil/componentes/calendario/linha_de_datas.dart';
import 'package:projf_estuda_facil/componentes/calendario/linha_numeros.dart';

class CalendarioPadrao extends StatelessWidget {
  const CalendarioPadrao({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 300,
      child: Column(
        children: [
          LinhaNumeros(),
          LinhaDeDatas(diaSemana: 'Segunda', corFundo: Colors.blue),
          LinhaDeDatas(diaSemana: 'Terça', corFundo: Colors.blue),
          LinhaDeDatas(diaSemana: 'Quarta', corFundo: Colors.blue),
          LinhaDeDatas(diaSemana: 'Quinta', corFundo: Colors.blue),
          LinhaDeDatas(diaSemana: 'sexta', corFundo: Colors.blue),
          LinhaDeDatas(diaSemana: 'Sábado', corFundo: Colors.blue),
          LinhaDeDatas(diaSemana: 'Domingo', corFundo: Colors.blue),
        ],
      ),
    );
  }
}