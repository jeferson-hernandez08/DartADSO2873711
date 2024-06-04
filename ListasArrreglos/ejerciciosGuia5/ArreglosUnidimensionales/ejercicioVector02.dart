import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO LISTA/ARREGLO 02.
  /*
    2. Llenar  dos  vectores  A  y  B  de  10  elementos  cada  uno,  sumar  el  elemento 
       uno del vector A con el elemento uno del vector B y así sucesivamente hasta 10, 
       almacenar el resultado en un vector C, e imprimir el vector resultante.
  */
  
  //DECLARACION/ASIGNACION VARIABLES LISTAS    
  List<double> vectorA = [];  
  List<double> vectorB = [];
  List<double> vectorC = [];
  int cantNumeros = 5;
  double num;

  //PROCESOS FORMULAS - ENTRADA DATOS - SALIDA DATOS. 
  for (var i = 0; i < cantNumeros; i++) {
    print("Ingresa números enteros de la lista A #${i + 1}");
    num = double.parse(stdin.readLineSync()!);
    vectorA.add(num);                  //Agregamos numeros ingresados a vector A.

    print("Ingresa números enteros de la lista B #${i + 1}");
    num = double.parse(stdin.readLineSync()!);
    vectorB.add(num);                 //Agregamos numeros ingresados a vector B.

  }
  for (var i = 0; i < cantNumeros; i++) {
    vectorC.add(vectorA[i] + vectorB[i]);    //.add Realizacion de suma de vectores.
  }
  print("La lista A es:");
  print(vectorA);
  print("La lista B es:");
  print(vectorB);
  print("*" * 30);
  print("La nueva lista C es:");
  print(vectorC);
}