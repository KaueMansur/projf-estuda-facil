import 'package:flutter/material.dart';
import 'package:projf_estuda_facil/main.dart';

class BtnAmarelo extends StatelessWidget {
  final String label;
  const BtnAmarelo({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 307,
      height: 44,
      child: ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Color(0xFFF4EB14)),
        ),
        onPressed: main,
        child: Text(
          this.label,
          style: const TextStyle(
            fontSize: 20,
            color: Color(0xFF004AAD),
          ),
        ),
      ),
    );
  }
}
