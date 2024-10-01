import 'package:flutter/material.dart';
import 'package:projf_estuda_facil/componentes/container_numero.dart';

class ContainerSemana extends StatelessWidget {
  const ContainerSemana({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      SizedBox(width: 80,),
      ContainerNumero(numero: 'Segunda'),
      ContainerNumero(numero: 'Terça'),
      ContainerNumero(numero: 'Quarta'),
      ContainerNumero(numero: 'Quinta'),
      ContainerNumero(numero: 'Sexta'),
    ]);
  }
}