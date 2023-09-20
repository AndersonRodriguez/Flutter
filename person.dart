abstract class Person {
  //Parametros o atributos

  String? _name, lastName;
  int? age;

  String get name {
    return '${_name} => Superman';
  }

  void set name(String name) {
    _name = name + '!';
  }

  // Constructor

  Person(this._name, this.lastName, this.age);
  Person.requiredName(this._name, {required this.lastName, this.age = 0});

  // Metodos

  correr() {
    print('La persona ${_name} ${lastName} corre');
  }

  cantar(String place) {
    print('La persona ${_name} ${lastName} Canta en la ${place}');
  }
}

class Hero extends Person {
  String? _poder;
  bool velocidad;

  Hero(String name, String lastName, int age, this._poder, this.velocidad)
      : super(name, lastName, age);

  @override
  correr() {
    super.correr();
    if (velocidad) {
      print('mas rapido!!!');
    } else {
      print('mas lento!!!');
    }
  }

  usasSuPoder() {
    print('El Super Hero usa el poder ${_poder}');
  }
}
