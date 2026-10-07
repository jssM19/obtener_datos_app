Future<void> main() async {
  print('Inicio');

  try {
    final nombre = await obtenerNombre();
    print('Nombre: $nombre');
  } catch (e) {
    print('Error: $e');
  }

  print('Fin');
}

Future<String> obtenerNombre() async {
  await Future.delayed(const Duration(seconds: 2));
  return 'Ana';
}
