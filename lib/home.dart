import 'package:flutter/material.dart';
import 'package:flu_callcenter/UI/dashboard.dart';


class HomeCall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Call Center"),
        ),
        body: DashboardPage(),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Carlos Ñahuiña Balbuena"),
                accountEmail: Text("cnahuina5@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor:
                      Theme.of(context).platform == TargetPlatform.iOS
                          ? Colors.blue
                          : Colors.white,
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              ListTile(
                onTap: (){
                  Navigator.pushNamed(context, '/listaLlamadas');
                },
                leading: Icon(Icons.list),
                title: Text("Lista de llamadas"),
              ),
              ListTile(
                onTap: (){
                  Navigator.pushNamed(context, '/llamadasPerdidas');
                },
                leading: Icon(Icons.phone),
                title: Text("LLamadas perdidas"),
              ),
              ListTile(
                onTap: (){
                  Navigator.pushNamed(context, '/llamadasRecibidas');
                },
                leading: Icon(Icons.phone),
                title: Text("Llamadas Recibidas"),
              ),
              ListTile(
                onTap: (){
                  Navigator.pushNamed(context, '/reporteLlamadas');
                },
                leading: Icon(Icons.pie_chart),
                title: Text("Reporte de llamadas"),
              ),
            ],
          ),
        ));

}
}
