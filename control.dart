void main() {
  Map<String, dynamic> persona = {
    'nombre1': 'Pedro',
    'nombre2': 'Federico',
    'apellido1': 'Paez',
    'apellido2': 'Perez',
    'fechaNacimiento': DateTime(2000, 12, 31),
    'rol': roles.admin,
    'coloresPreferidos': ['Naranja', 'Verde', 'Azul'],
    'swCambiarClave': true,
    'correo': "pedro@outlook.com",
    'tipoIdentificacion': tipoIdentificacion.pasaporte,
    "identificacion": 994785698,
    'score': 4.2,
    'segundoNombre': 'Juan'
  };

  // print(persona['coloresPreferidos'][1]);
  // print(persona['rol']);

  // IF - ELSE
  if (persona['rol'] == roles.admin) {
    print('Tiene Acceso');
  } else {
    print('NO tiene Acceso');
  }

  // If - Else - Else - If
  if (persona['rol'] == roles.admin) {
    print('Es un Admin');
  } else if (persona['rol'] == roles.root) {
    print('Es un Root');
  } else {
    print('No es un administrativo');
  }

  /// Operadores
  /// &&
  /// ||
  /// ==
  /// !=
  /// >
  /// <
  /// >=
  /// <=
  ///

  if (persona['rol'] == roles.admin && persona['swCambiarClave'])
    print('Cambie la contraseña!!');
  else
    print('No tiene acceso');

  // Ternario

  String correo = persona['correo'] == 'pedro@outlook.com'
      ? 'Si es valido'
      : 'No es valido';

  print(correo);

  // Si persona['segundoNombre'] es null deja por defecto el nombre pancho
  String nombre = persona['segundoNombre'] ?? 'Pancho';
  print(nombre);
}

enum roles { root, admin, guest }

enum tipoIdentificacion { cedula, nit, pasaporte }
