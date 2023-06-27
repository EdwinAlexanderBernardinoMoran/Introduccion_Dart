// LISTAS (Arreglos)

void main() {
  List<int> numeros = [1, 2, 3, 4];

  // Metodos de las listas.
  numeros.add(5);
  print(numeros);

  final masNumeros = List.generate(100, (int index) => index);
  print(masNumeros);
}

// Un metodo estatico es una funcion, que yo puedo llamarla sin hacer instancia de la misma.

// LowerCamelCase = Definicion de variables.
// OperCamelCase = Para las clases.