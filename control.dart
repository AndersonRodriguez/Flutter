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
    'segundoNombre': null
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

  // Switch

  switch (nombre) {
    case 'Anderson':
      print('El nombre es Anderson');
      break;
    case 'Juan':
      print('El nombre es Juan');
      break;
    default:
      print('Nombre no registrado');
      break;
  }

  // While

  int i = 0;

  while (i <= 5) {
    print('El valor de i en While es ${i}');
    i++; // i = i + 1;
  }

  // Do - While

  i = 0;

  do {
    print('El valor de i en DO-While es ${i}');
    i++; // i = i + 1;
  } while (i <= 5);

  // Break

  i = 0;

  while (i <= 5) {
    print('El valor de i en Break es ${i}');
    i++;

    if (i == 3) {
      break;
    }
  }

  // For - Continue

  for (int index = 0; index <= 5; index++) {
    if (index == 2) {
      continue;
    }

    print('FOR ${index}');

    if (index == 4) {
      break;
    }
  }

  List<String> colores = persona['coloresPreferidos'];

  for (String color in colores) {
    print(color);
  }

  for (int index = 0; index < colores.length; index++) {
    print(colores[index]);
  }

  colores.forEach((color) {
    print(color);
  });
}

enum roles { root, admin, guest }

enum tipoIdentificacion { cedula, nit, pasaporte }
