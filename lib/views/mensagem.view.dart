import 'package:flutter/material.dart';

class MensagemView extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp 2"),
        backgroundColor: Color(0xff128C7E),
      ),
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