import 'package:flutter/material.dart';
import 'package:projf_estuda_facil/componentes/Container_data.dart';
import 'package:projf_estuda_facil/componentes/container_dia_semana.dart';

class LinhaDeDatas extends StatelessWidget {
  final String diaSemana;
  final Color corFundo;
  const LinhaDeDatas({super.key, required this.diaSemana, required this.corFundo});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ContainerDiaSemana(diaSemana: this.diaSemana, corFundo: this.corFundo),
        ContainerData(),
        ContainerData(),
        ContainerData(),
        ContainerData(),
        ContainerData(),
      ]
    );
  }
}