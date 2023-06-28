// GETTERS: Es un metodo que luce como un metodo pero se llama como una propiedad.
import 'dart:math' as math;

void main() {
  final cuadrado = new Cuadrado(2);

  cuadrado.area = 100;
  print('area: ${cuadrado.calculaArea()}');
  print('lado: ${cuadrado.lado}');
  // Getters

  print('area get: ${cuadrado.area}');

  // cuadrado.lado = 20;
  // cuadrado.area = 20;

  // print(cuadrado.lado);
}

class Cuadrado {
  double lado = 0; // Lado * lado

  // Metodo Getter
  double get area {
    return this.lado * this.lado;
  }

  // Metodo Setters
  set area(double valor) {
    this.lado = math.sqrt(valor);
    // print('set: $valor');
  }

  Cuadrado(double lado) : this.lado = lado;

  // Metodo para calcular Area.
  double calculaArea() {
    return this.lado * this.lado;
  }
}
