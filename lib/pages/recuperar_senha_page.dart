import 'package:flutter/material.dart';
import 'package:projf_estuda_facil/componentes/botoes/btn_amarelo.dart';
import 'package:projf_estuda_facil/componentes/outros/campo_infos.dart';
import 'package:projf_estuda_facil/componentes/titulos/titulo_branco.dart';

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
              const BtnAmarelo(
                label: 'CONTINUAR',
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
