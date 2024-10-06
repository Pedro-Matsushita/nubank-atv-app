import 'package:flutter/material.dart';
import 'package:nubank_app_atv/conta.dart'; // Importa o arquivo que contém o widget 'Conta'

void main() => runApp(const MainApp());
// Função principal que inicia o aplicativo chamando o 'MainApp'

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => MainAppState();
}

class MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove a faixa de debug
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll<Color>(Color(0xFFBA4de3))),
            icon: Icon(Icons.person_outline),
            onPressed: () {},
            color: Color(0xFFF5F5F5),
          ),
          // Lsita de ícones no lado direito do AppBar
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.visibility_outlined, color: Color(0xFFF5F5F5)),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.question_mark_rounded, color: Color(0xFFF5F5F5)),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.mark_email_read_outlined,
                    color: Color(0xFFF5F5F5))),
          ],
          backgroundColor: Color(0xFF8A05BE),
        ),
        body: Container(
          margin: EdgeInsets.all(16),
          // ListView permite a rolagem se o conteúdo for maior que a tela
          child: ListView(
            children: [
              Conta(), // Exibe o widget 'Conta', que é importado de outro arquivo
            ],
          ),
        ),
      ),
    );
  }
}
