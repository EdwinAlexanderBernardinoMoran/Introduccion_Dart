// CLASES ABSTRACTAS.

// Son las que no se pueden instanciar.
// No podemos inicializar, o hacer instancias de ellas.

void main() {
  final perro = new Perro();
  final gato = new Gato();

  sonidoAnimal(perro);
  sonidoAnimal(gato);
  // perro.emitirSonido();
}

void sonidoAnimal(Animal animal) {
  animal.emitirSonido();
}

// Las clases siempre estan capitalizadas, con la primera palabra en Mayusculas (OpperCamelCase).
abstract class Animal {
  int? patas;
  void emitirSonido();
}

class Perro implements Animal {
  int? patas;
  void emitirSonido() => print('Guauuuuuu');
}

class Gato implements Animal {
  int? patas;
  int? cola;

  void emitirSonido() => print('Miauuuuu');
}
