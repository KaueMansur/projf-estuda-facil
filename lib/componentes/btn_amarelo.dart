import 'package:flutter/material.dart';
import 'package:projf_estuda_facil/main.dart';

class BtnAmarelo extends StatelessWidget {
  const BtnAmarelo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 307,
      height: 44,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Color(0xFFF4EB14)),
        ),
        onPressed: main,
        child: Text(
          'Texto',
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFF004AAD),
          ),
        ),
      ),
    );
  }
}
