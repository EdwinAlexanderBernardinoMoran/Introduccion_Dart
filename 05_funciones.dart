void main() {
  final String nombre = "Edwin";

  // saludar(nombre, 'Greetings');
  saludar2(mensaje: 'Greeting', nombre: nombre);
}

// Argumentos posicionales o obligatorios.
// void saludar([String nombre = 'No name']) {
//   print('Hola $nombre');
// }

// Los argumentos son mandados por valor si son primitivos
// Los objetos son mandados por referencia
void saludar(String nombre, [String mensaje = 'Hi']) {
  print('$mensaje $nombre');
}

// void saludar2({String nombre = 'No name', String? mensaje}) {
//   print('$mensaje $nombre');
// }

void saludar2({required String nombre, required String mensaje}) {
  print('$mensaje $nombre');
}
