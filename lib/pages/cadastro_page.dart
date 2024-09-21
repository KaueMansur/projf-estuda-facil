import 'package:flutter/material.dart';

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

// Classe TituloBranco 
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

// Classe BtnAmarelo personalizada
class BtnAmarelo extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const BtnAmarelo({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 307,
      height: 44,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(const Color(0xFFF4EB14)),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 20,
            color: Color(0xFF004AAD),
          ),
        ),
      ),
    );
  }
}

// Tela principal CadastroPage
class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  bool isAutistaLayout = false; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF003D8D), // Cor de fundo 
      body: SafeArea(
        child: SingleChildScrollView( // Adicionando rolagem para telas menores
          padding: const EdgeInsets.all(20), // Espaçamento para todo o conteúdo
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      Navigator.pop(context); // Fechar a tela
                    },
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Título "Cadastre-se" 
              const Center(
                child: TituloBranco(title: 'Cadastre-se'),
              ),

              const SizedBox(height: 30),

              // Campo "Email"
              const CampoInfos(nomeCampo: 'Email'),

              const SizedBox(height: 20),

              // Campo "Cpf"
              const CampoInfos(nomeCampo: 'Cpf'),

              const SizedBox(height: 20),

              // Campo "Usuário"
              const CampoInfos(nomeCampo: 'Usuário'),

              const SizedBox(height: 20),

              // Campo "Senha"
              const CampoInfos(nomeCampo: 'Senha'),

              const SizedBox(height: 20),

              // Campo "Confirme sua senha"
              const CampoInfos(nomeCampo: 'Confirme sua senha'),

              const SizedBox(height: 20),

              // Checkbox para o "Layout de tela para Autista"
              Row(
                children: [
                  Checkbox(
                    value: isAutistaLayout,
                    onChanged: (bool? value) {
                      setState(() {
                        isAutistaLayout = value ?? false;
                      });
                    },
                  ),
                  const Text(
                    'Layout de tela para Autista',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),

              const SizedBox(height: 40),

              // Substituindo o botão "Cadastrar" pelo BtnAmarelo
              BtnAmarelo(
                label: 'CADASTRAR',
                onPressed: () {
                  
                },
              ),

              const SizedBox(height: 20),

              // Botão "Voltar"
              GestureDetector(
                onTap: () {
                  Navigator.pop(context); // Voltar para a tela anterior
                },
                child: const Center(
                  child: Text(
                    'Voltar',
                    style: TextStyle(color: Colors.white),
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

void main() {
  runApp(const MaterialApp(home: CadastroPage()));
}
