class Usuario {
  final int id;
  final String nombre;
  final String usuario;
  final String email;
  final Direccion direccion;
  final String telefono;
  final String sitioWeb;
  final Compania compania;

  Usuario({
    required this.id,
    required this.nombre,
    required this.usuario,
    required this.email,
    required this.direccion,
    required this.telefono,
    required this.sitioWeb,
    required this.compania,
  });

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      id: json['id'] as int,
      nombre: json['name'] as String,
      usuario: json['username'] as String,
      email: json['email'] as String,
      direccion: Direccion.fromJson(json['address'] as Map<String, dynamic>),
      telefono: json['phone'] as String,
      sitioWeb: json['website'] as String,
      compania: Compania.fromJson(json['company'] as Map<String, dynamic>),
    );
  }
}

class Direccion {
  final String calle;
  final String suite;
  final String ciudad;
  final String codigoPostal;
  final Geo geo;

  Direccion({
    required this.calle,
    required this.suite,
    required this.ciudad,
    required this.codigoPostal,
    required this.geo,
  });

  factory Direccion.fromJson(Map<String, dynamic> json) {
    return Direccion(
      calle: json['street'] as String,
      suite: json['suite'] as String,
      ciudad: json['city'] as String,
      codigoPostal: json['zipcode'] as String,
      geo: Geo.fromJson(json['geo'] as Map<String, dynamic>),
    );
  }
}

class Geo {
  final String latitud;
  final String longitud;

  Geo({required this.latitud, required this.longitud});

  factory Geo.fromJson(Map<String, dynamic> json) {
    return Geo(latitud: json['lat'] as String, longitud: json['lng'] as String);
  }
}

class Compania {
  final String nombre;
  final String frase;
  final String bs;

  Compania({required this.nombre, required this.frase, required this.bs});

  factory Compania.fromJson(Map<String, dynamic> json) {
    return Compania(
      nombre: json['name'] as String,
      frase: json['catchPhrase'] as String,
      bs: json['bs'] as String,
    );
  }
}
