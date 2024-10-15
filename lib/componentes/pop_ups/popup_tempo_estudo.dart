import 'package:flutter/material.dart';

class PopupTempoEstudo extends StatelessWidget {
  const PopupTempoEstudo({super.key});

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
                  labelText: 'Tempo de estudo',
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(
                        Color.fromARGB(255, 7, 255, 90))),
                child: const Text('COMEÇAR'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
