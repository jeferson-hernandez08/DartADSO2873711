import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO LISTA/ARREGLO 04.
  /*
    4.  Almacenar 8 números en un vector, almacenarlos en otro vector en orden inverso al vector original 
        e imprimir el vector resultante.
  */

  //DECLARACION LISTAS/VARIABLES 
  List<int> vector = [];
  List<int> vectorInverso = [];
  int cantVector = 8;
  int num;

  //PROCESOS FORMULAS - ENTRADA DATOS - SALIDA DATOS.
  for ( int i = 0; i < cantVector; i++ ) {      //Ciclo para ingresar las datos al vector
    print("Ingrese numero # ${i + 1}");
    num = int.parse(stdin.readLineSync()!);
    vector.add(num);
    print("Se agrega al vector el numero: $num");
    print("El vector va en:");
    print(vector);
  }

  for ( int i = cantVector - 1; i >= 0; i-- ) {   //Ciclo para recorrer y hacer vector Invers.
    vectorInverso.add(vector[i]);
  }

  //SALIDA DATOS
  print("*************************************************");
  print(vector);
  print(vectorInverso);
}