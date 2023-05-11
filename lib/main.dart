import 'package:flutter/material.dart';
import 'package:mota/inicio.dart';
import 'package:mota/pag1.dart';
import 'package:mota/pag2.dart';
import 'package:mota/pag3.dart';
import 'package:mota/pag4.dart';
import 'package:mota/t1.dart';
import 'package:mota/t2.dart';
import 'package:mota/t3.dart';
import 'package:mota/t4.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Named Routes Demo',
    theme: ThemeData(
      primarySwatch: Colors.lightGreen,
    ),
    // Inicie la aplicación con la ruta con nombre. En nuestro caso, la aplicación comenzará
    // en el Widget FirstScreen
    initialRoute: '/',
    routes: {
      // Cuando naveguemos hacia la ruta "/", crearemos el Widget FirstScreen
      '/': (context) => PantallaInicio(),
      // Cuando naveguemos hacia la ruta "/second", crearemos el Widget SecondScreen
      '/1': (context) => PantallaUno(),
      '/2': (context) => PantallaDos(),
      '/3': (context) => PantallaTres(),
      '/4': (context) => PantallaCuatro(),
      '/t1': (context) => TabUno(),
      '/t2': (context) => TabDos(),
      '/t3': (context) => TabTres(),
      '/t4': (context) => TabCuatro(),
    },
  ));
}
