import 'package:flutter/material.dart';

class BarraProgresso extends StatelessWidget {
  const BarraProgresso({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.all(5),
      width: 300,
      height: 50,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(50),
        ),
        width: 200,
        height: 30,
        child: const Text(
          '100%',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
