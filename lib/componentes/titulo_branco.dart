import 'package:flutter/material.dart';

class TituloBranco extends StatelessWidget {
  const TituloBranco({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Cadastre-se',
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 40,
      ),
    );
  }
}
