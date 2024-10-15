import 'package:flutter/material.dart';

class BtnUpdate extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  const BtnUpdate({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 50,
      child: ElevatedButton(
        onPressed: onPressed,
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