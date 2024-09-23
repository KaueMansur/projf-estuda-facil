import 'package:flutter/material.dart';

// Classe BtnAmarelo personalizada
class BtnAmarelo extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const BtnAmarelo({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(const Color(0xFFF4EB14)),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            color: Color(0xFF1D35C2),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

// Classe TituloBranco personalizada
class TituloBranco extends StatelessWidget {
  final String title;

  const TituloBranco({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 40,
      ),
    );
  }
}

// Classe CampoInfos personalizada
class CampoInfos extends StatelessWidget {
  final String nomeCampo;
  const CampoInfos({super.key, required this.nomeCampo});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: TextField(
        style: const TextStyle(
          color: Colors.white,
        ),
        decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
          contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          labelText: nomeCampo,
          labelStyle: const TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class RecuperarSenhaPage extends StatelessWidget {
  const RecuperarSenhaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 29, 53, 194), 
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          // Adiciona rolagem para telas menores
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Linha para os ícones de voltar e fechar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      Navigator.pop(context); // Voltar para a tela anterior
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.black),
                    onPressed: () {
                      Navigator.pop(context); // fechar a tela
                    },
                  ),
                ],
              ),

              const SizedBox(height: 20),
              
              // Titulo "Esqueci minha senha"
              const Center(
                child: TituloBranco(title: 'Esqueci minha senha'),
              ),

              const SizedBox(height: 10),

      
              const Text(
                'Para sua segurança, enviaremos um código para o email cadastrado para validar sua redefinição de senha.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              // Campo para inserir o Token usando o CampoInfos
              const CampoInfos(nomeCampo: 'Token'),

              const SizedBox(height: 20),

              // Botão "Solicitar Código"
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: const Size(350, 50),
                ),
                onPressed: () {
                  // A função para solicitar o código
                },
                child: const Text(
                  'Solicitar o código',
                  style: TextStyle(color: Colors.white),
                ),
              ),

              const SizedBox(height: 10),

              // Botão "Já tenho o código"
              TextButton(
                onPressed: () {
                  // aqui "Já tenho o código"
                },
                child: const Text(
                  'Já tenho o código de redefinição',
                  style: TextStyle(color: Colors.white),
                ),
              ),

              const SizedBox(height: 30),

              // Botão "Continuar" usando BtnAmarelo
              BtnAmarelo(
                label: 'CONTINUAR',
                onPressed: () {
                  // ao clicar em "Continuar"
                  //  verificação do Token
                },
              ),

              const SizedBox(height: 20),

              // Botão "Voltar"
              GestureDetector(
                onTap: () {
                  Navigator.pop(context); // Volta para a tela anterior
                },
                child: const Text(
                  'Voltar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(home: RecuperarSenhaPage()));
}
