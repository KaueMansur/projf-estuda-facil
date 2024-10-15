import 'package:flutter/material.dart';
import 'package:projf_estuda_facil/componentes/calendario/container_semana.dart';
import 'package:projf_estuda_facil/componentes/calendario/linha_de_datas.dart';

class CalendarioTempo extends StatelessWidget {
  const CalendarioTempo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 300,
      child: Column(
        children: [
          ContainerSemana(),
          LinhaDeDatas(diaSemana: 'Manhã', corFundo: Color(0xFFDFD9E8)),
          LinhaDeDatas(diaSemana: 'Tarde', corFundo: Color(0xFFDFD9E8)),
          LinhaDeDatas(diaSemana: 'Noite', corFundo: Color(0xFFDFD9E8)),
        ],
      ),
    );
  }
}