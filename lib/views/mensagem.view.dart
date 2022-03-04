import 'package:flutter/material.dart';
import 'package:whatsapp_2/models/mensagem.model.dart';

class MensagemView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp 2"),
          backgroundColor: Color(0xff128C7E),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
          ],
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt),),
              Tab(child: Text("CHATS"),),
              Tab(child: Text("STATUS"),),
              Tab(child: Text("LIGAÇÕES"),)
            ]),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Em breve negão')),
            ChatPessoal(),
            Center(child: Text('Em breve negão')),
            Center(child: Text('Em breve negão')),
          ]
        ),
      ),
    );
  }
}