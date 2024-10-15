import 'package:flutter/material.dart';

class TituloBranco extends StatelessWidget {
  final String title;
  const TituloBranco({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 40,
      ),
    );
  }
}
