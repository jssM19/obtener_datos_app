import 'package:flutter/foundation.dart';

Future<void> main() async {
  debugPrint('Inicio');

  try {
    final nombre = await obtenerNombre();
    debugPrint('Nombre: $nombre');
  } catch (e) {
    debugPrint('Error: $e');
  }

  debugPrint('Fin');
}

Future<String> obtenerNombre() async {
  await Future.delayed(const Duration(seconds: 2));
  return 'Ana';
}
