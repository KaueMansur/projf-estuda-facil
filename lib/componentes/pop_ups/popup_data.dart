import 'package:flutter/material.dart';

class PopupData extends StatelessWidget {
  const PopupData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xFFA6E3A1),
      ),
      child: Center(
        child: SizedBox(
          width: 250,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Data de entrega',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(255, 7, 255, 90))),
                    child: const Text('SALVAR'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                            Color.fromARGB(255, 7, 255, 90))),
                    child: const Text('CANCELAR'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// const TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Data de entrega da tarefa',
//                 ),
//               ),