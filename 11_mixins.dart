// Esto de los Mixins es algo propio de Dart
// Un mixins en pocas palabras no es mas que nosotros tengamos una clase y le añadamos caracteristicas que ya estan totalmente implementadas a nuestra clase

abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin Volador {
  void volar() => print('Estoy volando');
}

mixin Caminante {
  void caminar() => print('Estoy caminando');
}

mixin Nadador {
  void nadar() => print('Estoy nadando');
}

class Dolphin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Caminante, Volador {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Caminante, Nadador, Volador {}

class Tiburon extends Pez with Nadador {}

class Flying_Fish extends Pez with Nadador, Volador {}

void main() {
  // final flipper = new Dolphin();
  // flipper.nadar();

  final batman = new Murcielago();
  batman.caminar();
  batman.volar();
}
