import 'dart:io';

void main() {
   //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO WHILE 08
  /*
    8. Encontrar el mayor valor de un conjunto de n números dados.
  */

  //DECLARACION VARIABLES
  int contador = 0;             //Variable Contador o valor inicial del while
  int cantNumeros;              //Variable para asignar la cantidad. Condicion de parada while.
  double num;
  double numMayor = 0;

  //ENTRADA DATOS                                   //Terminar ponerle rango y verificar por que no da con mayor  //Prueba
  print ("Ingrese la cantidad de numeros:");
  cantNumeros = int.parse(stdin.readLineSync()!);    //Hay que transformar las variables (4 for).  

  //PROCESOS FORMULAS - ENTRADA DATOS - - SALIDA DATOS.  
  while ( contador < cantNumeros ) { 
    print ("Ingrese el numero ${contador+1}");
    num = double.parse(stdin.readLineSync()!);
    if ( num > numMayor) {
      numMayor = num;
    }
    else {
      numMayor = numMayor;
    }     
    print("Hasta el momento el numero mayor es: $numMayor");     //Validamos numero mayor
  contador++;
  }
  print("_____________________________________________________");
  print("El numero mayor de los $cantNumeros numeros ingresados es: $numMayor");
}