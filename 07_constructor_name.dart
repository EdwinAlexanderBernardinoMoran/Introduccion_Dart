void main() {
  final rawJson = {'nombre': 'Edwin'};

  // Lo marca con rojo porque podria ser que el nombre no exista y no podra crear la instancia del objeto pero con el signo de admiración (!).
  // final iroman = new Heroe(nombre: rawJson['nombre']!, poder: rawJson['poder']!);

  final iroman = Heroe.fromJson(rawJson);

  // final wolverine = new Heroe(nombre: 'Logan', poder: 'Regeneracion');
  // print(wolverine);

  print(iroman);
}

class Heroe {
  String nombre;
  String poder;

  Heroe({required this.nombre, required this.poder});

  // Constructor con nombre, crea una nueva instancia de rowJson como argumento a la clase.
  Heroe.fromJson(Map<String, String> json)
      : this.nombre = json['nombre'] ?? 'Is no defined !',
        this.poder = json['poder'] ?? 'No tiene poder';

  String toString() {
    return 'Heroe: nombre: ${this.nombre}, poder: ${this.poder}';
  }
}
