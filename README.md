# obtener_datos_app

Aplicación Flutter de ejemplo que consume la API pública de [JSONPlaceholder](https://jsonplaceholder.typicode.com/) para obtener un listado de usuarios y mostrar su información de detalle.

Sirve como práctica de los conceptos fundamentales de Flutter:

- Consumo de APIs REST con el paquete `http`.
- Decodificación de JSON con `dart:convert`.
- Modelos de datos con constructores `fromJson`.
- Manejo de estados de carga, error y datos con `FutureBuilder`.
- Navegación entre pantallas con `Navigator`.

## Funcionalidades

- Listado de usuarios con avatar, nombre y correo.
- Pantalla de detalle con dirección, teléfono, sitio web y datos de la empresa.
- Indicador de carga mientras se obtienen los datos.
- Mensaje de error con botón para reintentar la petición.

## Requisitos

- [Flutter](https://docs.flutter.dev/get-started/install) (SDK `^3.10.3` o superior).
- Dart incluido con Flutter.
- Un emulador, simulador o dispositivo con oporte para Flutter.

## Instalación y ejecución

```bash
# 1. Instalar dependencias
flutter pub get

# 2. Verificar que el entorno esté configurado
flutter doctor

# 3. Ejecutar la aplicación
flutter run
```

Para elegir un dispositivo específico:

```bash
flutter devices
flutter run -d <device-id>
```

## Estructura del proyecto

```
assets/
└── images/                      # Imágenes usadas por la aplicación

lib/
├── main.dart                    # Punto de entrada y configuración de MaterialApp
├── models/
│   └── usuario.dart             # Modelos Usuario, Direccion, Geo y Compania
├── screens/
│   ├── usuarios_page.dart       # Listado de usuarios (FutureBuilder)
│   └── usuario_detalle_page.dart# Detalle de un usuario
├── service/
│   └── usuario_service.dart     # Petición HTTP a la API
└── scripts/
    └── practica_async.dart      # Ejemplo aislado de async/await
```

## Arquitectura

1. `UsuarioService.obtenerUsuarios()` realiza una petición `GET` a
   `https://jsonplaceholder.typicode.com/users`.
2. La respuesta JSON se decodifica y se transforma en una `List<Usuario>`
   usando `Usuario.fromJson`.
3. `UsuariosPage` muestra el resultado con un `FutureBuilder`, cubriendo los
   estados de carga, error y datos.
4. Al tocar un usuario se navega a `UsuarioDetallePage`, que recibe el objeto
   `Usuario` ya cargado.

## Modelo de datos

La respuesta de la API se mapea a las siguientes clases en `lib/models/usuario.dart`:

- `Usuario`: `id`, `nombre`, `usuario`, `email`, `direccion`, `telefono`, `sitioWeb`, `compania`.
- `Direccion`: `calle`, `suite`, `ciudad`, `codigoPostal`, `geo`.
- `Geo`: `latitud`, `longitud`.
- `Compania`: `nombre`, `frase`, `bs`.

## Dependencias

| Paquete           | Uso                          |
| ----------------- | ---------------------------- |
| `http`            | Peticiones a la API REST     |
| `cupertino_icons` | Iconografía estilo iOS       |
| `flutter_lints`   | Reglas de análisis de código |

## Pruebas

```bash
flutter test
```

## Script de práctica

`lib/scripts/practica_async.dart` contiene un ejemplo independiente de
`async`/`await` con `Future.delayed`. Se puede ejecutar con:

```bash
dart run lib/scripts/practica_async.dart
```
