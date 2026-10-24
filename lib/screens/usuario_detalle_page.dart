import 'package:flutter/material.dart';
import 'package:obtener_datos_app/models/usuario.dart';

class UsuarioDetallePage extends StatelessWidget {
  final Usuario usuario;

  const UsuarioDetallePage({super.key, required this.usuario});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(usuario.nombre),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Avatar grande
            Center(
              child: CircleAvatar(
                radius: 60,
                child: Text(
                  usuario.nombre[0],
                  style: const TextStyle(fontSize: 48),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Nombre
            Text(
              usuario.nombre,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),

            // Username
            Text(
              '@${usuario.usuario}',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey[600], fontSize: 16),
            ),
            const SizedBox(height: 24),

            // Datos
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.email),
                    title: const Text('Email'),
                    subtitle: Text(usuario.email),
                  ),
                  const Divider(height: 1),
                  ListTile(
                    leading: const Icon(Icons.phone),
                    title: const Text('Teléfono'),
                    subtitle: Text(usuario.telefono),
                  ),
                  const Divider(height: 1),
                  ListTile(
                    leading: const Icon(Icons.language),
                    title: const Text('Sitio web'),
                    subtitle: Text(usuario.sitioWeb),
                  ),
                  const Divider(height: 1),
                  ListTile(
                    leading: const Icon(Icons.location_on),
                    title: const Text('Ciudad'),
                    subtitle: Text(usuario.direccion.ciudad),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Empresa
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.business),
                    title: const Text('Empresa'),
                    subtitle: Text(usuario.compania.nombre),
                  ),
                  const Divider(height: 1),
                  ListTile(
                    leading: const Icon(Icons.campaign),
                    title: const Text('Frase'),
                    subtitle: Text(usuario.compania.frase),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
