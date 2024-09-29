import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Ícone de voltar
          onPressed: () {
            // Ação para o botão de voltar
          },
        ),
        title: const Text('Estuda Fácil'),
        actions: [
          IconButton(
            icon: const Icon(Icons.crop_square),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Colors.blue[800], // Fundo azul
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Search',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Tarefas de estudo:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                color: Colors.grey[300], // Fundo do campo de texto
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText:
                          'Escreva suas tarefas de estudo aqui...', // Placeholder
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const Text(
                'Tarefas diárias:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                color: Colors.grey[300], // Fundo do campo de texto
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText:
                          'Escreva suas tarefas diárias aqui...', // Placeholder
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/calendar_icon.png', // Substitua pelo ícone do calendário
                    width: 100,
                    height: 100,
                  ),
                  Image.asset(
                    'assets/task_icon.png', // Substitua pelo ícone das tarefas
                    width: 100,
                    height: 100,
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
