import 'package:flutter/material.dart';
import 'package:projf_estuda_facil/pages/autismo/hub_aut_page.dart';
import 'package:projf_estuda_facil/pages/cadastro_page.dart';
import 'package:projf_estuda_facil/pages/recuperar_senha_page.dart';

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

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 29, 53, 194), //Cor de fundo da tela
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Imagem do logo
                Image.asset(
                  '../../images/logo_app.png',
                  height: 200, // tamanho da imagem (logo)
                ),

                // Texto  "ESTUDA FÁCIL" colorido
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'ES',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'fonte',
                          color: Colors.red,
                        ),
                      ),
                      TextSpan(
                        text: 'TU',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'fonte',
                          color: Colors.yellow,
                        ),
                      ),
                      TextSpan(
                        text: 'DA',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'fonte',
                          color: Colors.green,
                        ),
                      ),
                      TextSpan(
                        text: 'FÁ',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'fonte',
                          color: Colors.blue,
                        ),
                      ),
                      TextSpan(
                        text: 'CIL',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'fonte',
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Campo do "E-mail ou Telefone" com ícone
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'E-mail ou Telefone',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    prefixIcon: Icon(Icons.person, color: Colors.grey),
                  ),
                ),

                const SizedBox(height: 15),

                // Campo da "Senha" com ícone
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    prefixIcon: Icon(Icons.lock, color: Colors.grey),
                  ),
                ),

                const SizedBox(height: 20),

                // Container azul claro
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFADD8E6),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      // Texto "Esqueceu a senha?" com navegação para Esqueci Senha
                      GestureDetector(
                        onTap: () {
                          // Navegação para a Tela 3
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const RecuperarSenhaPage()),
                          );
                        },
                        child: const Text(
                          'Esqueceu a senha?',
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 12,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),

                      const SizedBox(height: 20),

                      // Botão de Login usando BtnAmarelo
                      BtnAmarelo(
                        label: 'Login',
                        onPressed: () {
                          // Navegação para a cadastro
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HubAutPage()),
                          );
                        },
                      ),

                      const SizedBox(height: 10),

                      // Texto "ou"
                      const Text(
                        'ou',
                        style: TextStyle(
                          color: Color.fromARGB(255, 5, 71, 92),
                          fontSize: 16,
                        ),
                      ),

                      const SizedBox(height: 10),

                      // Botão "Criar uma conta"
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          minimumSize: const Size(350, 50),
                          backgroundColor: Colors.white,
                          foregroundColor:
                              const Color.fromARGB(255, 29, 53, 194),
                        ),
                        onPressed:
                          () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CadastroPage()),
                            );
                          },
                        
                        child: const Text('Crie uma conta'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
