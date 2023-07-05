void main() async {
  print('Antes de la peticion');

  final url = await httGet('https://api.nasa.com/aliens');
  print(url);
  // httGet('https://api.nasa.com/aliens').then((data) {
  //   print(data.toUpperCase());
  // });

  // getNombre('10').then((data) => print(data));

  // En este momento esto se esta imprimiendo despues de toda la ejecucion, si queremos que espere para desues imprimir lo que sigue se hace lo siguiente. Asi nomas marca error el await, debemos hacer asincrono el main para que funcione y deje de marcar error.

  final nombre = await getNombre('10');
  print(nombre);

  print('Fin de la peticion');
}

Future<String> getNombre(String id) async {
  return '$id - Edwin';
}

Future<String> httGet(String url) {
  return Future.delayed(Duration(seconds: 3), () => 'Hola Mundo - 3 segundos');
}
