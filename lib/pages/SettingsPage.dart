import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leadingWidth: 40,
        title: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "Configurações",
            // style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "images/profile1.jpg",
                        height: 65,
                        width: 65,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Usuario",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Hey there, I am using whatsapp.",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black45,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.key),
                ),
                title: Text(
                  "Conta",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text(
                  "Notificação de segurança, mudança de número",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.lock),
                ),
                title: Text(
                  "Privacidade",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text(
                  "Bloqueio de contato, mensagens temporárias",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.tag_faces),
                ),
                title: Text(
                  "Avatar",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text(
                  "Criar, editar, foto do perfil",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.message),
                ),
                title: Text(
                  "Mensagens",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text(
                  "Tema, Papel de pared, histórico de conversas",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.notifications),
                ),
                title: Text(
                  "Notificações",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text(
                  "Mensagens, grupos, chamadas",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.data_usage),
                ),
                title: Text(
                  "Armazenamento e dados",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text(
                  "Uso de rede, download automático",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.travel_explore),
                ),
                title: Text(
                  "Idioma do aplicativo",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text(
                  "Português (Brasil) (idioma do aparelho)",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.info),
                ),
                title: Text(
                  "Ajuda",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                subtitle: Text(
                  "Central de ajuda, fale conosco, política de privacidade",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Icon(Icons.group),
                ),
                title: Text(
                  "Convidar amigos",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Column(
                  children: [
                    Text(
                      "from",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Facebook",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
