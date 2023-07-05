// FUTURES. (promise), es una tarea asincrona, (Algo que se ejecuta a diferente tiempo)

// Las funciones de Flecha son conocidas como Landa Functions

void main() {
  print('Antes de la peticion');
  httGet('https://api.nasa.com/aliens').then((data) {
    print(data.toUpperCase());
  });
  print('Fin de la peticion');
}

// Future httGet(String url) {
//   return Future.delayed(Duration(seconds: 3), () {
//     return 'Hola mundo - 3 segundos';
//   });
// }

Future<String> httGet(String url) {
  return Future.delayed(Duration(seconds: 3), () => 'Hola Mundo - 3 segundos');
}
