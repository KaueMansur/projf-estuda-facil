import 'package:flutter/material.dart';

class TituloPreto extends StatelessWidget {
  final String title;
  const TituloPreto({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 30,
      ),
    );
  }
}
