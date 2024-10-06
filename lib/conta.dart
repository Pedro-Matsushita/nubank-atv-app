import 'package:flutter/material.dart';

// Função principal que executa o app
void main() => runApp(const Conta());

class Conta extends StatelessWidget {
  const Conta({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      // Coluna para organizar os elementos verticalmente
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Linha que exibe o título "Conta" e um ícone de navegação
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Conta",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            // Botão com ícone de seta pra frente
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios_outlined,
                    color: Color(0xFFC5C5C5))),
          ],
        ),
        SizedBox(height: 10,),

        // Container que exibe o saldo da conta
        Container(
          child: Text(
            "R\$ 1.000,00",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
          ),
        ),
        SizedBox(height: 30,),

        //Container com botões para diferentes ações (Pix, pagar, Qrcode, transferir)
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //Container para o botão PIX
              Container(
                child: Column(
                  children: [
                    IconButton.filledTonal(
                        style: ButtonStyle(
                            fixedSize: MaterialStatePropertyAll<Size>(
                                Size.fromRadius(30))),
                        onPressed: () {},
                        icon: Icon(Icons.pix, color: Color(0xFF191919))),
                    Text(
                      "Pix",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              //Container para o Botão PAGAR
              Container(
                child: Column(
                  children: [
                    IconButton.filledTonal(
                        style: ButtonStyle(
                          fixedSize: MaterialStatePropertyAll<Size>(
                              Size.fromRadius(30)),
                        ),
                        onPressed: () {},
                        icon: Icon(
                          Icons.money,
                          color: Color(0xFF191919),
                        )),
                    Text(
                      "Pagar",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              //Container para o botão QRCODE
              Container(
                child: Column(
                  children: [
                    IconButton.filledTonal(
                        style: ButtonStyle(
                          fixedSize: MaterialStatePropertyAll<Size>(
                              Size.fromRadius(30)),
                        ),
                        onPressed: () {},
                        icon: Icon(
                          Icons.qr_code,
                          color: Color(0xFF191919),
                        )),
                    Text(
                      "QRcode",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              // Container para o botão TRANSFERIR
              Container(
                child: Column(
                  children: [
                    IconButton.filledTonal(
                        style: ButtonStyle(
                          fixedSize: MaterialStatePropertyAll<Size>(
                              Size.fromRadius(30)),
                        ),
                        onPressed: () {},
                        icon: Icon(
                          Icons.attach_money,
                          color: Color(0xFF191919),
                        )),
                    Text(
                      "Transferir",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 30,),

        // Seção de cartões e caixinhas de planejamento
        Container(
          child: Column(
            children: [
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                color: Color(0xFFECECEC),
                elevation: 0,
                child: ListTile(
                  contentPadding: EdgeInsets.all(15),
                  leading: Icon(Icons.payment_outlined),
                  title: Text('Meus Cartões',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(height: 30,),

              // Card sobre "Caixinhas"
              Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                  color: Color(0xFFECECEC),
                  elevation: 0,
                  child: ListTile(
                    title: Text('Guarde seu dinheiro em caixinhas',
                        style: TextStyle(
                            color: Color(0xFF8A05BE),
                            fontWeight: FontWeight.bold)),
                    subtitle: Text('Acessando a área de planejamento'),
                  )),
            ],
          ),
        ),

        // Divisor visual
        Padding(
          padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
          child: Divider(
            height: 1,
          ),
        ),

        // Seção de cartão de Crédito
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cartão de Crédito',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_outlined,
                        color: Color(0xFFC5C5C5)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Fatura Fechada',
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'R\$2.123,39',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Vencimento dia 15',
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Renegociar',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                // style: ButtonStyle(
                //   backgroundColor:
                //       MaterialStateProperty.all<Color>(Color(0xFF8A05BE)),
                // ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
          child: Divider(
            height: 1,
          ),
        ),

        // Seção de empréstimo
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Empréstimo',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios_outlined,
                        color: Color(0xFFC5C5C5)),
                  ),
                ],
              ),
              Text(
                'Tudo certo! Você está em dia',
                style: TextStyle(fontSize: 18, color: Color(0xFFB5B5B5)),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
          child: Divider(
            height: 1,
          ),
        ),

        // Seção descubra mais
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Descubra Mais',
                style: TextStyle(fontSize: 24),
              ),
              Card(
                  color: Color(0xffeae8ea),
                  elevation: 0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        height: 150.0,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('images/seguroVida.png'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.symmetric(
                                  vertical: 5, horizontal: 0),
                            ),
                            Text(
                              'Seguro de Vida',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Cuide bem de quem você ama de um jeito simples',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black54,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 10)),
                      ButtonBar(
                        alignment: MainAxisAlignment.start,
                        children: <Widget>[
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF8A05BE),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Conhecer',
                              style: TextStyle(color: Color(0xffffffff)),
                            ),
                          ),
                        ],
                      )
                    ],
                  ))
            ],
          ),
        )
      ],
    );
  }
}
