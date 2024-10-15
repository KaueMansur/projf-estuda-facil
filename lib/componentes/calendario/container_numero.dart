import 'package:flutter/material.dart';

class ContainerNumero extends StatelessWidget {
  final String numero;
  const ContainerNumero({super.key, required this.numero});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 40,
      child: Text(
        this.numero,
        textAlign: TextAlign.center,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1, style: BorderStyle.solid),
        color: Colors.white,
      ),
    );
  }
}
