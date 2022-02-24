import 'package:flutter/material.dart';

class MensagemView extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Column(
            children: [
              
            ],
          ),
          Column(
            children: [
              Text("Nome"),
              Text("Ultima Mensagem")
            ],
          ),
          Column(
            children: [
              Text("20:00"),
              Text("2")
            ],
          ),
        ]),
    );
    
  }
}