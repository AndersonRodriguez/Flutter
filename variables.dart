void main() {
  print('Hola mundo');

  // Esto es un comentario

  /**
   * 
   * Esto 
   * es un 
   * Comentario
   * 
   */

  ///
  /// Documentación
  /// [Input]
  /// return
  ///

  dynamic miValorDinamico =
      ''; // Infiere el valor y puede cambiar con el tiempo
  miValorDinamico = 1;
  miValorDinamico = 1.6;
  miValorDinamico = true;

  var miVar = ''; // Infiere el valor pero no cambia con el tiempo
  // miVar = 2;'

  int a = 3;
  print(a);

  double b = 0.3;
  double c = 2.0;

  num d = 3;
  d = 3.4;

  int e; // Que valor toma?, Toma valor null

  // print(e); No puedo imprimir en consola null

  String miString = 'Hola "mundo"';
  String miString1 = "Mundo, Dijo 'Anderson'";

  print(miString);
  print(miString1);

  String cadenaLarga = """
Esto
Es 
un
String
""";

  print(cadenaLarga);

  // Concatenar un String

  String concat = miString + ' ' + miString1;
  print(concat);

  String concat1 = '${miString} prueba ${miString1}';
  print(concat1);
  print(concat1.toUpperCase());
  print(concat1[0]);
  print(concat1.length);

  // Boolean

  bool activo = true;
  activo = false;

  activo = !activo;

  print(activo);

  // Listas

  List<dynamic> numeros = [
    1,
    2,
    3,
    4,
    5,
    true,
    false,
    'Anderson',
    activo == false,
  ];

  numeros.add('Hola');

  print(numeros);

  // Concatenar v1

  List<dynamic> miLista = ['Mi', 'Lista', for (var i in numeros) i];
  print(miLista);

  // Concatenar v2

  List<dynamic> miLista1 = [0, 10, ...numeros];
  print(miLista1);

  // Concatenar v3

  List<dynamic> miLista3 = [20, 30, 1];

  miLista3.addAll(numeros);
  print(miLista3);
  print(miLista3.length);

  // Set

  Set<dynamic> miSet = {'Hola', 'mundo', 'Hola'};

  miSet.add('Anderson');
  miSet.add('Anderson');

  print(miSet);

  // Map ====> Clave: Valor

  Map<String, dynamic> persona = {
    // Key: Value
    'nombre': 'Anderson',
    'edad': 27,
    'isLogin': true,
    'juegosPlay': ['COD']
  };

  Map<int, String> myMap = {1: 'Uno', 2: 'Dos'};

  print(persona);
  print(myMap);

  print(persona['nombre']);

  // Constantes

  const String pais = 'Colombia'; // Se aloja en memora en tiempo de compilación
  final double pi; // Se aloja en memoria en tiempo de ejecución

  // pais = '';  No se puede hacer
  pi = 4.1;
  // pi = 5.8;  No deja cambiar el valor una vez inicializado

  print(Color.red);
}

enum Color { red, blue, green }
