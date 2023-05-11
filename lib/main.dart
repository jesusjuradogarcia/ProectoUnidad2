import 'package:flutter/material.dart';
import 'package:jesus/inicio.dart';
import 'package:jesus/pag1.dart';
import 'package:jesus/pag2.dart';
import 'package:jesus/pag3.dart';
import 'package:jesus/pag4.dart';
import 'package:jesus/t1.dart';
import 'package:jesus/t2.dart';
import 'package:jesus/t3.dart';
import 'package:jesus/t4.dart';

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
