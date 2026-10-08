class Usuario {
  final int id;
  final String nombre;
  final String email;
  final String telefono;

  Usuario({
    required this.id,
    required this.nombre,
    required this.email,
    required this.telefono,
  });

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      id: json['id'] as int,
      nombre: json['name'] as String,
      email: json['email'] as String,
      telefono: json['phone'] as String,
    );
  }
}
