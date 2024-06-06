import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO ARREGLO BIDIMIENSIONAL 01.
  /*
    1. Hacer un algoritmo que almacene números en una matriz de 5 * 6. Imprimir la suma de los números
       almacenados en la matriz.
  */

  //DECLARACION LISTAS 
  List<List <double>> matriz = [];
  double suma = 0;
  int cantFilas = 5, cantColumnas = 6;

  //PROCESOS FORMULAS - ENTRADA DATOS 
  //Ciclo para llenar la matriz.
  for (int i = 0; i < cantFilas; i++) {
    List<double> fila = [];
    for (int j = 0; j < cantColumnas; j++) {
      print("Ingrese el numero $i,$j");
      fila.add(double.parse(stdin.readLineSync()!));
    }
    matriz.add(fila);
  }

  //Ciclo para recorrer y generar la suma
  for (var i = 0; i < matriz.length; i++) { 
    for (var j = 0; j < matriz[0].length; j++) {
      suma += matriz[i][j];     
    }
  }

  //SALIDA DATOS
  //Imprimimos matriz
  for (int fila = 0; fila < matriz.length; fila++) {    //Recorre las Filas 
  stdout.write("|");    //Cuando inicia una fila
  
  for (int columna = 0; columna < matriz[0].length; columna++) {   //Recorre las Columnas 
    stdout.write("${matriz[fila][columna]}|");
  }
  print("");
  }
  //Imprimimos matriz en linea y la suma de lementos
  print(matriz);
  print("La suma de los elementos de la matriz es $suma");
}

 





