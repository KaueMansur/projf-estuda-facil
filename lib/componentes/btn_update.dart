import 'package:flutter/material.dart';
import 'package:projf_estuda_facil/main.dart';

class BtnUpdate extends StatelessWidget {
  const BtnUpdate({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 150,
      height: 50,
      child: ElevatedButton(
        onPressed: main,
        child: Text(
          'SALVAR',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Color(0xFF7FB3D5)),
        ),
      ),
    );
  }
}
