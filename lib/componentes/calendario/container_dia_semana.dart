import 'package:flutter/material.dart';

class ContainerDiaSemana extends StatelessWidget {
  final String diaSemana;
  final Color corFundo;
  const ContainerDiaSemana({super.key, required this.diaSemana, required this.corFundo});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 80,
      decoration: BoxDecoration(
        color: corFundo,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        diaSemana,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
