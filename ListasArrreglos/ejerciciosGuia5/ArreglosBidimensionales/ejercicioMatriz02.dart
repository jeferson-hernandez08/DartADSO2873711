import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO ARREGLO BIDIMIENSIONAL 02.
  /*
    2. Hacer un algoritmo que llene una matriz de 10 * 10 y determine la posición [fila, columna] del número
       mayor almacenado en la matriz. Los números son diferentes.
  */

  //DECLARACION LISTAS 
  List<List <int>> matriz = [];
  int cantFilas = 3;
  int cantColumnas = 3;

  //PROCESOS FORMULAS - ENTRADA DATOS 
  for (int i = 0; i < cantFilas; i++) {
    List<int> fila = [];
    for (int j = 0; j < cantColumnas; j++) {
      print("Ingrese el numero $i,$j");
      fila.add(int.parse(stdin.readLineSync()!));
    }
    matriz.add(fila);
  }

  //SALIDA DATOS
  print(matriz);
  //Imprimimos matriz
  for (int fila = 0; fila < matriz.length; fila++) {    //Recorre las Filas 
  stdout.write("|");    //Cuando inicia una fila
  
  for (int columna = 0; columna < matriz[0].length; columna++) {   //Recorre las Columnas 
    stdout.write("${matriz[fila][columna]}|");
  }
  print("");
  }

}