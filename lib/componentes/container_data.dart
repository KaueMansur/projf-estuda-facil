import 'package:flutter/material.dart';

class ContainerData extends StatelessWidget {
  const ContainerData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1, style: BorderStyle.solid),
        color: Colors.white,
      ),
    );
  }
}