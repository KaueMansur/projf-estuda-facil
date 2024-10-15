import 'package:flutter/material.dart';
import 'package:projf_estuda_facil/main.dart';

class BtnUpdatePadrao extends StatelessWidget {
  final String label;
  const BtnUpdatePadrao({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 40,
      child: ElevatedButton(
        onPressed: main,
        style: ButtonStyle(
          backgroundColor: const WidgetStatePropertyAll(Color(0xFFCDCDCD)),
          shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
        ),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            color: Color(0xEB2521C3),
          ),
        ),
      ),
    );
  }
}