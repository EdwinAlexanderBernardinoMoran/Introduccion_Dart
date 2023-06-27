void main() {
  // Map persona = {'nombre': 'Edwin', 'edad': 35, 'soltero': false};
  Map<String, dynamic> persona = {
    'nombre': 'Edwin',
    'edad': 35,
    'soltero': false
  };
  persona.addAll({'lastname': 'Bernardino'});
  print(persona);
  print(persona['nombre']);
}
