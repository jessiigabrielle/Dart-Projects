import 'package:flutter/material.dart';

class Tela extends StatefulWidget {
  @override
  _TelaState createState() => _TelaState();
}

class _TelaState extends State<Tela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Background da tela
        backgroundColor: Color.fromRGBO(153, 51, 153, .5),
        appBar: AppBar(
          title: Text('Cartão do Nubank'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.credit_card),
              color: Colors.white,
              onPressed: () {},
            )
          ],
        ),
        body: Center(
          //FlipCard(
          //direction: FlipDirection.HORIZONTAL, // default
          //front:
          child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.purple[600],
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              width: 400,
              height: 250,
              // FRENTE DO CARTAO
              child: Stack(children: <Widget>[
                Positioned(
                  bottom: 40,
                  left: 110,
                  child: Text(
                    'TESTE L M TESTE',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Image.asset(
                    'assets/mastercard.png',
                    width: 90,
                  ),
                ),
                Positioned(
                  top: 90,
                  left: 10,
                  child: Image.asset(
                    'assets/chip.png',
                    width: 60,
                  ),
                ),
                Positioned(
                  top: 105,
                  left: 75,
                  child: Image.asset(
                    'assets/nfc.png',
                    width: 20,
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 20,
                  child: Image.asset(
                    'assets/nu_logo.png',
                    width: 90,
                    color: Colors.white,
                  ),
                ),
              ])),
          // VERSO DO CARTAO
          //back:
          /*child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.purple[600],
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              width: 400,
              height: 250,
              // pilha de widgets do verso
              child: Stack(children: <Widget>[
                // container branco no topo

                Container(
                  width: 200,
                  height: 50,
                  //Containeralignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                ),

                Positioned(
                  bottom: 40,
                  left: 110,
                  child: Text(
                    '9999 9999 9999 9999',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 150,
                  right: 150,
                  child: Image.asset(
                    'assets/mastercard.png',
                    width: 90,
                  ),
                ),
              ])),
        )*/
        ));
  }
}
