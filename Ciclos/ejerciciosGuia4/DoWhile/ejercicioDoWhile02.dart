import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO DO WHILE 02.
  /*
    2. Un alumno de la clase de lógica matemática desea desarrollar un algoritmo y diagrama de flujo en el 
       cual introduzca un número entero positivo e invierta los dígitos del número. Mostrar el número 
       invertido.
  */

  //DECLARACION VARIABLES  
  int numInicial;
  int nuevoNumero, modulo, division;
  
  //ENTRADA DATOS - PROCESOS FORMULAS -  SALIDA DATOS. 
  print("Ingrese el numero desea a invertir:");
  numInicial = int.parse(stdin.readLineSync()!);

  nuevoNumero = numInicial;
  print("El numero inicial es: $numInicial");
  stdout.write("El numero invertido es: ");
  do { 
    modulo = nuevoNumero % 10;
    division = nuevoNumero ~/ 10;   //Eslo mismo que : (nuevoNumero / 10).toInt();
    stdout.write(modulo);
    nuevoNumero = division;
  }
  while ( division != 0 );

}