import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:obtener_datos_app/models/usuario.dart';

class UsuarioService {
  static const String _url = 'https://jsonplaceholder.typicode.com/users';

  Future<List<Usuario>> obtenerUsuarios() async {
    try {
      // 1. Hacemos la petición GET
      final respuesta = await http.get(Uri.parse(_url));

      // 2. Verificamos que la respuesta fue exitosa (código 200)
      if (respuesta.statusCode == 200) {
        // 3. Convertimos el texto JSON a una lista de Maps
        final List<dynamic> data = jsonDecode(respuesta.body);

        // 4. Convertimos cada Map en un objeto Usuario
        return data
            .map((json) => Usuario.fromJson(json as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception('Error del servidor: ${respuesta.statusCode}');
      }
    } catch (e) {
      throw Exception('Error al obtener usuarios: $e');
    }
  }
}
