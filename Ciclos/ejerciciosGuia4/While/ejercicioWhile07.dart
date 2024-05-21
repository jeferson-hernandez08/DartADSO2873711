import 'dart:io';

void main() {
   //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO WHILE 07
  /*
    7. Encontrar el menor valor de un conjunto de n números dados.
  */

  //DECLARACION VARIABLES
  int contador = 0;             //Variable Contador o valor inicial del while
  int cantNumeros;              //Variable para asignar la cantidad. Condicion de parada while.
  double num;
  double numMenor = 9999;

  //ENTRADA DATOS 
  print ("Ingrese la cantidad de numeros:");
  cantNumeros = int.parse(stdin.readLineSync()!);    //Hay que transformar las variables (4 for).

  //PROCESOS FORMULAS - ENTRADA DATOS - SALIDA DATOS.  
  while ( contador < cantNumeros ) { 
    print ("Ingrese el numero ${contador+1}");
    num = double.parse(stdin.readLineSync()!);
    if ( num < numMenor) {
      numMenor = num;
    }
    else {
      numMenor = numMenor;
    }
    print("Hasta el momento el numero menor es: $numMenor");     //Validamos numero menor
  contador++;
  }
  print("_____________________________________________________");
  print("El numero menor de los $cantNumeros numeros ingresaos es: $numMenor");
}