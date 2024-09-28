import 'package:flutter/material.dart';
import 'package:projf_estuda_facil/main.dart';

class BtnUpdate extends StatelessWidget {
  final String label;
  const BtnUpdate({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 50,
      child: ElevatedButton(
        onPressed: main,
        style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Color(0xFF7FB3D5)),
        ),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}