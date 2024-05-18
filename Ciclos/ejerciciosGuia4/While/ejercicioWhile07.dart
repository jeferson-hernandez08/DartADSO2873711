import 'dart:io';

void main() {
   //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO WHILE 07
  /*
    7. Encontrar el menor valor de un conjunto de n números dados.
  */

  //DECLARACION VARIABLES
  int contador = 0;             //Variable Contador o valor inicial del while
  int cantNumeros; 
  double num;
  double numMenor = 9999;
  double numMayor = 0;

  //ENTRADA DATOS 
  print ("Ingrese la cantidad de numeros:");
  cantNumeros = int.parse(stdin.readLineSync()!);    //Quede aqui Hay que trnasfor las variables. 4 for

  //ENTRADA DATOS - PROCESOS FORMULAS - SALIDA DATOS.  
  while ( contador < cantNumeros ) { 
    print ("Ingrese el numero ${contador+1}");
    num = double.parse(stdin.readLineSync()!);
    if ( num < numMenor) {
      numMenor = num;
    }
    if ( num > numMenor) {
      numMayor = num;
    }
    print("Hasta el momento el numero menor es: $numMenor");
    print("Hasta el momento el numero mayor es: $numMayor");
  contador++;
  }
}