import 'package:flutter/material.dart';


class MensagemModel extends StatelessWidget {
  final String? mensagemChat;
  final String? mensagemTitulo;
  final Color? corStatus;
  final String? imagemUrl;

  const MensagemModel({
    Key? key,
    this.mensagemChat,
    this.mensagemTitulo,
    this.corStatus,
    this.imagemUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(imagemUrl!),
        ),
        Expanded(
          child: ListTile(
              title: Text('$mensagemTitulo',
                  style: const TextStyle(fontWeight: FontWeight.w600)),
              subtitle: Row(children: [
                Icon(
                  corStatus == Colors.blue ? Icons.done_all : Icons.done,
                  size: 15,
                  color: corStatus,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Text(
                      '$mensagemChat',
                      style: const TextStyle(overflow: TextOverflow.ellipsis),
                    ),
                  ),
                ),
              ]),
              trailing: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Ontem',
                    ),
                  ),
                ],
              ),
          ),
        ),
      ],
    );
  }
}



class ChatPessoal extends StatelessWidget {
 const ChatPessoal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            MensagemModel(
                mensagemTitulo: "Alex Gomes",
                mensagemChat: 'Perdi o busão carai!',
                corStatus: Colors.blue,
                imagemUrl:
                    'https://web.whatsapp.com/pp?e=https%3A%2F%2Fpps.whatsapp.net%2Fv%2Ft61.24694-24%2F260929558_238147664936868_3482573824621662214_n.jpg%3Fccb%3D11-4%26oh%3D871d2c141889d7d0220f492ddaf6aeb8%26oe%3D6228243E&t=l&u=5517988044110%40c.us&i=1637716974&n=mFBVRhgEpT4EFLPNLeq3AcSn%2B2%2BDYOxvO8gOT62hfi0%3D'),
            MensagemModel(
                mensagemTitulo: "Vitor Kemuel",
                mensagemChat: 'Ta levando o casco de coca?',
                corStatus: Colors.grey,
                imagemUrl:
                    'https://teams.microsoft.com/api/mt/part/amer-02/beta/users/8:orgid:5016f3d8-0acf-433a-b924-4b842c928329/profilepicturev2?displayname=VITOR%20KEMUEL%20CARREIRO%20PONTE&size=HR64x64'),
            MensagemModel(
                mensagemTitulo: "Denão",
                mensagemChat: 'Bora trancar a facu man? kkkkk',
                corStatus: Colors.grey,
                imagemUrl:
                    'https://web.whatsapp.com/pp?e=https%3A%2F%2Fpps.whatsapp.net%2Fv%2Ft61.24694-24%2F260413286_934614304136045_1624613046205158420_n.jpg%3Fccb%3D11-4%26oh%3Dcc91cfe0d622603c96f7be2f8a211a25%26oe%3D6227B83A&t=l&u=5517992236979%40c.us&i=1637525124&n=gEZM3n1lsqfY1ieNzKt%2BlQpO%2B24eII%2BYK3t0MVr9obY%3D'),
            MensagemModel(
                mensagemTitulo: "Gui Pio",
                mensagemChat: 'Enviou uma figurinha',
                corStatus: Colors.blue,
                imagemUrl:
                    'https://web.whatsapp.com/pp?e=https%3A%2F%2Fpps.whatsapp.net%2Fv%2Ft61.24694-24%2F176865451_117571724007497_60699825886193035_n.jpg%3Fccb%3D11-4%26oh%3D52ae10f4e96addb58247c5b3852be821%26oe%3D6226C47D&t=l&u=5517991380595%40c.us&i=1634086260&n=PPnldzS3baxS5frwtjMjpdk7jr%2B3oVekwISKp6xcShM%3D'),
          ],
        ),
      ),
    );
  }
}
