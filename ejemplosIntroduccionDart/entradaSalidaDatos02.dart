import 'dart:io';

void main() {
  print("Ejemplo 02 - Entrada/Salida:");

  //DEFINICION VARIABLES
  int num1, num2, suma;

  //ENTRADA DATOSALGORITMO
  print("Ingrese valor de numero 1");
  num1 = int.parse(stdin.readLineSync()!);       //Funcion para convertir a un string?
  stdout.writeln("Ingrese valor del numero 2");
  num2 = int.parse(stdin.readLineSync()!);

  //PROCESO - FORMULAS
  suma = num1 + num2;

  //SALIDA DATOS
  print("La suma de los numeros ingresados es: $suma");
}