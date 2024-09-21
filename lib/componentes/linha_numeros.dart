import 'package:flutter/material.dart';
import 'package:projf_estuda_facil/componentes/container_numero.dart';

class LinhaNumeros extends StatelessWidget {
  const LinhaNumeros({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(width: 80,),
      ContainerNumero(numero: '1'),
      ContainerNumero(numero: '2'),
      ContainerNumero(numero: '3'),
      ContainerNumero(numero: '4'),
      ContainerNumero(numero: '5'),
    ]);
  }
}
