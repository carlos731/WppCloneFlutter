import 'package:flutter/material.dart';

import '../widgets/CallsWidget.dart';
import '../widgets/ChatsWidget.dart';
import '../widgets/StatusWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            title: Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                'WhatsApp',
                style: TextStyle(fontSize: 21),
              ),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(top: 10, right: 18),
                child: InkWell(
                  borderRadius: BorderRadius.circular(40),
                  onTap: () {},
                  child: Icon(
                    Icons.camera_alt_outlined,
                    size: 25,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Icon(
                  Icons.search,
                  size: 24,
                ),
              ),
              PopupMenuButton(
                onSelected: (selected) {
                  //if someone clicks on value number 5 means click on settings
                  if (selected == 7) {
                    Navigator.pushNamed(context, "settingsPage");
                  }
                },
                elevation: 10,
                padding: EdgeInsets.symmetric(vertical: 20),
                iconSize: 24,
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text(
                      "Novo Grupo",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text(
                      "Nova transmissão",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 3,
                    child: Text(
                      "Aparelhos conectados",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 4,
                    child: Text(
                      "Mensagens Favoritas",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 5,
                    child: Text(
                      "Encontrar empresas",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 6,
                    child: Text(
                      "Pagamentos",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 7,
                    child: Text(
                      "Configurações",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Container(
                color: Color(0xFF075E55),
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: Colors.white,
                  indicatorWeight: 4,
                  labelStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  tabs: [
                    // tab 1
                    Container(
                      width: 25,
                      child: Tab(
                        icon: Icon(
                          Icons.groups_2,
                          size: 28,
                        ),
                      ),
                    ),
                    // tab 2
                    Container(
                      width: 90,
                      child: Tab(
                        child: Row(
                          children: [
                            Text("Conversas"),
                            SizedBox(
                              width: 2,
                            ),
                            Container(
                              alignment: Alignment.center,
                              //padding: EdgeInsets.all(10),
                              height: 22,
                              width: 22,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                "10",
                                style: TextStyle(
                                  color: Color(0xFF075E55),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // tab 3
                    Container(
                      width: 70,
                      child: Tab(
                        child: Text("Status"),
                      ),
                    ),
                    // tab 4
                    Container(
                      width: 80,
                      child: Tab(
                        child: Text("Chamadas"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: TabBarView(
                children: [
                  // tab 1 Camera
                  Container(color: Colors.black),
                  // tab 2 ChatsWidget
                  ChatsWidget(),
                  // tab 3 StatusWidget
                  StatusWidget(),
                  // tab 4 CallsWidget
                  CallsWidget()
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Color(0xFF075E55),
          child: Icon(Icons.message),
        ),
      ),
    );
  }
}
