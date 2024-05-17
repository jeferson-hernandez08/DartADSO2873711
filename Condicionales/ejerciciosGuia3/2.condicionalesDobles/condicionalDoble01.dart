import 'dart:io';

void main(List<String> args) {
  //JEFERSON MAURICIO HERNANDEZ LADINO -  EJERCICIO CONDICIONAL DOCLES 01
  /*
   1. Desarrollar un algoritmo que lea dos números y los imprima en forma ascendente.
  */ 

  //DECLARACION VARIABLES
  double num1, num2;

  //ENTRADA DATOS 
  print ("Ingrese numero 1 y numero 2");
  num1 = double.parse(stdin.readLineSync()!);
  num2 = double.parse(stdin.readLineSync()!);
  
  //PROCESOS - FORMULAS
  if (num1 > num2) {
    print("$num2, $num1");
  }
  else {
    print("$num1, $num2");
  }
}