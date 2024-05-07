import 'dart:io';

void main() {

  //DEFINICION VARIABLES
  String? nombre;
  //nombre = "juan";

  //ENTRADA ALGORITMO
  print ("Ejemplo 01 - Entrada/Salida");
  stdout.write ("Ingrese su nombre");
  nombre = stdin.readLineSync();

  //SALIDA ALGORITMO
  print("Su nombre es: $nombre");

}