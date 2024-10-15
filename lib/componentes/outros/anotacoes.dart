import 'package:flutter/material.dart';

class Anotacoes extends StatelessWidget {
  // TextEditingController campoAnotacoes1 = TextEditingController();
  // TextEditingController campoAnotacoes2 = TextEditingController();
  // TextEditingController campoAnotacoes3 = TextEditingController();
  // TextEditingController campoAnotacoes4 = TextEditingController();
  Anotacoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 250,
      height: 180,
      child: Column(
        children: [
          const Text(
            'Anotações',
      
          ),
          SizedBox(
            width: 200,
            height: 35,
            child: TextField(
              // controller: campoAnotacoes1,
              style: const TextStyle(
                 fontSize: 10,
              ),
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            width: 200,
            height: 35,
            child: TextField(
              // controller: campoAnotacoes2,
              style: const TextStyle(
                 fontSize: 10,
              ),
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            width: 200,
            height: 35,
            child: TextField(
              // controller: campoAnotacoes3,
              style: const TextStyle(
                 fontSize: 10,
              ),
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            width: 200,
            height: 35,
            child: TextField(
              // controller: campoAnotacoes4,
              style: const TextStyle(
                 fontSize: 10,
              ),
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
