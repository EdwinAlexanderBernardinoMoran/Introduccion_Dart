void main() {
  final wolverine = new Heroe(nombre: 'Logan', poder: 'Regeneracion');

  wolverine.nombre = 'Logan';
  wolverine.poder = 'Regeneracion';
  print(wolverine);
}

class Heroe {
  String nombre;
  String poder;

  // Heroe(String pNombre, String pPoder) {
  //   this.nombre = pNombre;
  //   this.poder = pPoder;
  // }

  // Con esta manera se soluciona El error que marca en rojo a Heroe error.
  // Heroe(this.nombre, this.poder);
  Heroe({required this.nombre, required this.poder});

  @override
  String toString() {
    return 'Heroe: nombre: ${this.nombre}, poder: ${this.poder}';
  }
}
