import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO -  EJERCICIO CONDICIONAL ANIDADO 01
  /*
   1.  Dado tres números calcular el mayor
  */ 

  //DECLARACION VARIABLES
  double num1, num2, num3;

  //ENTRADA DATOS 
  print("Ingrese numero 1:");
  num1 = double.parse(stdin.readLineSync()!);
  print("Ingrese numero 2:");
  num2 = double.parse(stdin.readLineSync()!);
  print("Ingrese numero 3:");
  num3 = double.parse(stdin.readLineSync()!);

  //PROCESOS - FORMULAS
  if (num1 > num2) {
    if (num1 > num3) {
      print("El numero uno es mayor: $num1");
    }
    else {
      print ("El numero 3 es mayor: $num3");
    }
  }
  else if (num3 > num2) {
    print ("El numero 3 es mayor: $num3");
  }
    else {
    print ("El numero 2 es mayor: $num2");
    }
}