import 'package:flutter/material.dart';

class ReportesLlamadas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Reporte de llamadas")),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          Column(
            children: <Widget>[
              Card(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical:20.0),
                      child: Column(
                        children: <Widget>[
                          Text("210:10:34",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold),),
                          Text("Duración llamadas generadas",textAlign: TextAlign.center,style: TextStyle(),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Container(
                       width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical:20.0),
                      child: Column(
                        children: <Widget>[
                          Text("01:15:33",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold),),
                          Text("Duración Máxima de llamada")
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Container(
                       width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical:20.0),
                      child: Column(
                        children: <Widget>[
                          Text("00:20:10",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold),),
                          Text("Duración Mínima de llamada")
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: <Widget>[
                    Container(
                       width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical:20.0),
                      child: Column(
                        children: <Widget>[
                          Text("103",style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.bold),),
                          Text("Número con más llamadas")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
