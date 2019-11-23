import 'package:flutter/material.dart';

class LlamadasRecibidas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LLamadas Recibidas"),
      ),
      body: ListView(
              children: <Widget>[
                Card(
                  child: Container(
                    color: Colors.black12,
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Item"),
                        Text("Emisor"),
                        Text("Receptor"),
                        Text("Hora"),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("1"),
                        Text("938438919"),
                        Text("938438919"),
                        Text("14:40:00"),
                      ],
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("2"),
                        Text("938438919"),
                        Text("938438919"),
                        Text("14:40:00"),
                      ],
                    ),
                  ),
                ),
                 Card(
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("3"),
                        Text("938438919"),
                        Text("938438919"),
                        Text("14:40:00"),
                      ],
                    ),
                  ),
                ),
                 Card(
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("4"),
                        Text("938438919"),
                        Text("938438919"),
                        Text("14:40:00"),
                      ],
                    ),
                  ),
                ),

              ],
      ),
    );
  }
}