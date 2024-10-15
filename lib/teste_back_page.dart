import 'package:flutter/material.dart';

class TesteBackPage extends StatefulWidget {

  const TesteBackPage({super.key});

  @override
  State<TesteBackPage> createState() => _TesteBackPageState();
}

class _TesteBackPageState extends State<TesteBackPage> {
  final TextEditingController _valor1 = TextEditingController();

  final TextEditingController _valor2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _valor1,
            ),
            TextField(
              controller: _valor2,
            ),
            ElevatedButton(
              onPressed: () {
                Calcular();
              },
              child: const Text('Testar'),
            ),
          ],
        ),
      ),
    );
  }

  Calcular(){
    int valor1 = int.parse(_valor1.text.toString());
                int valor2 = int.parse(_valor2.text.toString());

                int valor3 = valor1 + valor2;

                setState(() {
                  
                });

                return showDialog(
                  context: context,
                  builder: (context){
                    return AlertDialog(
                      content: Text("$valor3"),
                    );
                  },
                );
  }
}
