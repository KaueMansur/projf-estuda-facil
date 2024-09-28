import 'package:flutter/material.dart';

class Anotacoes extends StatelessWidget {
  const Anotacoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 250,
      height: 180,
      child: const Column(
        children: [
          Text(
            'Anotações',
      
          ),
          SizedBox(
            width: 200,
            height: 35,
            child: TextField(
              style: TextStyle(
                 fontSize: 10,
              ),
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            width: 200,
            height: 35,
            child: TextField(
              style: TextStyle(
                 fontSize: 10,
              ),
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            width: 200,
            height: 35,
            child: TextField(
              style: TextStyle(
                 fontSize: 10,
              ),
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            width: 200,
            height: 35,
            child: TextField(
              style: TextStyle(
                 fontSize: 10,
              ),
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
