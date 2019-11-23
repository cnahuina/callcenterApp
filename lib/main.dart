import 'package:flu_callcenter/UI/llamadas_recibidas.dart';
import 'package:flu_callcenter/UI/reporte_llamadas.dart';
import 'package:flutter/material.dart';

import 'package:flu_callcenter/UI/lista_llamadas.dart';
import 'package:flu_callcenter/UI/llamadas_perdidas.dart';
import 'package:flu_callcenter/home.dart';
import 'package:flu_callcenter/util/color.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Call Center',
      theme: ThemeData(
        primarySwatch: customColor,
      ),
      home: HomeCall(),
      routes: {
         '/listaLlamadas': (context) => ListaLlamadas(),
         '/llamadasPerdidas': (context) => LlamadasPerdidas(),
         '/llamadasRecibidas': (context) => LlamadasRecibidas(),
         '/reporteLlamadas': (context) => ReportesLlamadas(),
      },
    );
  }
}

