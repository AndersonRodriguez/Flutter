void main() {
  print(suma(2, 6));
  print(resta(2, 6));
  print(operacion(6, 7, resta));

  print(dup(8.0));
  print(trip(8.0));

  print(transformaA('Anderson', false, 0));
  print(transformaB('Juan', null, 8));
  print(transformaC('Pancho', exclama: 3));
}

/// Es una funcion para sumar 2 numeros
/// [input] parametros para sumar
/// [output] retorna la suma de los 2 numeros
int suma(int a, int b) {
  return a + b;
}

int resta(int a, int b) {
  return a - b;
}

int operacion(int a, int b, Function func) {
  return func(a, b);
}

// Funciones anonimas

var dup = (double x) {
  return x * 2;
};

// Funciones flecha

var trip = (double x) => x * 3;

// Funciones complejas

String transformaA(String nombre, bool mayus, int exclama) {
  if (mayus) {
    nombre = nombre.toUpperCase();
  }

  nombre += '!' * exclama;

  return nombre;
}

// Parametros opcionales

String transformaB(String nombre, [bool? mayus, int exclama = 2]) {
  if (mayus != null && mayus) {
    nombre = nombre.toUpperCase();
  }

  // if (exclama != null) {
  nombre += '!' * exclama;
  // }

  return nombre;
}

// Parametros nombrados

String transformaC(String nombre, {bool? mayus, required int exclama}) {
  if (mayus != null && mayus) {
    nombre = nombre.toUpperCase();
  }

  // if (exclama != null) {
  nombre += '!' * exclama;
  // }

  return nombre;
}
