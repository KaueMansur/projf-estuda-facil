import 'package:flutter/material.dart';

class RedefinirSenhaPage extends StatefulWidget {
  const RedefinirSenhaPage({super.key});

  @override
  _RedefinirSenhaPageState createState() => _RedefinirSenhaPageState();
}

class _RedefinirSenhaPageState extends State<RedefinirSenhaPage> {
  final _formKey = GlobalKey<FormState>();

  // Controladores para os campos de entrada
  final TextEditingController _cpfController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  final TextEditingController _confirmaSenhaController =
      TextEditingController();
  final TextEditingController _confirmaNovaSenhaController =
      TextEditingController();

  @override
  void dispose() {
    _cpfController.dispose();
    _senhaController.dispose();
    _confirmaSenhaController.dispose();
    _confirmaNovaSenhaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 16, 54, 219),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Função para voltar à página anterior
          },
        ),
      ),
      backgroundColor:
          const Color.fromARGB(255, 18, 59, 241), // Cor de fundo da tela
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Text(
                  'Redefinir minha senha',
                  style: TextStyle(
                    color: Colors.white, // Cor do texto em branco
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              // Campo CPF
              TextFormField(
                controller: _cpfController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Confirme seu CPF',
                  labelStyle: TextStyle(
                      color: Colors.white), // Texto do label em branco
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.white), // Borda em branco
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors
                            .white), // Borda em branco quando o campo estiver focado
                  ),
                ),
                style: const TextStyle(
                    color: Colors.white), // Texto digitado em branco
              ),
              const SizedBox(height: 16),
              // Nova senha
              TextFormField(
                controller: _senhaController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Nova senha',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 16),
              // Confirme a nova senha
              TextFormField(
                controller: _confirmaNovaSenhaController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Confirme a nova senha',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 16),
              // Confirme a senha
              TextFormField(
                controller: _confirmaSenhaController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Confirme sua senha',
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 30),
              // Botão de envio
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow, // cor do botão
                    textStyle: const TextStyle(color: Colors.blue),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Lógica de redefinição de senha
                    }
                  },
                  child: const Text(
                    'ENVIAR',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

