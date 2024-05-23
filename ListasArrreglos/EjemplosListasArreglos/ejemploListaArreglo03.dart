import 'dart:io';

void main() {
  //Agregar elementos a la Lista - ADD

  List<String> nombres = [];
  String? nombre;

  //Ciclo para llenar nombres.
  for (int i=0; i < 5; i++) {      //Para adicionar los 5 elemntos de la lista
    print ("Digite el nombre #${i + 1}");
    nombre = stdin.readLineSync()!;
    nombres.add(nombre);   //Agrega elemento al final de l alista
    print(nombres);
  }
  print('*' * 30);
  print(nombres);

  //Recorrer la lista parta mostrar elementos
  for (int i=0; i < nombres.length; i++) {     //Para recorrer la lista  //.length valida el tamaño de la lista o el numero de cajones
    print("Nombre #${i+1}: ${nombres[i]}");

  }
}