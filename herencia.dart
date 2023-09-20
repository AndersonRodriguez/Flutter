import 'person.dart';

void main() {
  // Person anderson = Person('Anderson', 'Rodriguez', 27);
  // Person pancho = Person.requiredName('Pancho', lastName: 'Rodriguez', age: 40);

  // anderson.correr();
  // pancho.correr();

  // anderson.cantar('Opera');
  // pancho.cantar('Bar');

  Hero superman = Hero('Clarkkk', 'Kent', 33, 'Volar', true);

  print(superman.name);
  superman.name = 'Flash';

  superman.correr();
  superman.cantar('Krypton');

  // print(superman._poder);
}
