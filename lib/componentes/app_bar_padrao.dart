import 'package:flutter/material.dart';

class AppBarPadrao extends StatefulWidget {
  const AppBarPadrao({super.key});

  @override
  State<AppBarPadrao> createState() => _AppBarPadraoState();
}

class _AppBarPadraoState extends State<AppBarPadrao> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: const Text(
          'Calendário',
          style: TextStyle(
            color: Color(0xEB2521C3),
          ),
        ),
      );
  }
}