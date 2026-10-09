import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import './models/usuario.dart';

void main() {
  final json = {
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {"lat": "-37.3159", "lng": "81.1496"},
    },
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
    "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets",
    },
  };

  final usuario = Usuario.fromJson(json);
  debugPrint('Nombre: ${usuario.nombre}');
  debugPrint('Ciudad: ${usuario.direccion.ciudad}');
  debugPrint('Empresa: ${usuario.compania.nombre}');
  debugPrint('Lat: ${usuario.direccion.geo.latitud}');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Obtener datos',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Scaffold(body: Center(child: Text('Mira la consola 👀'))),
    );
  }
}
