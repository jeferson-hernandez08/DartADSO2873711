import 'dart:io';

void main() {
  //Definicon de matriz.
  List<List<int>> matriz1;

  //Definicion e Inicializacion Matriz Vacia.
  List<List<int>> matriz2 = [];

  //Definir e inicializar con valores la matriz.
  List<List<int>> matriz3 = [
    [3, 5, 7, 9],
    [2, 4, 6, 8],
    [1, 8, 9, 12],
  ];

  //Acceder a los elementos.
  print(matriz3);
  print(matriz3[1][2]);  //Imprime 6
  print(matriz3[2][3]);  //Imprime 12
  print(matriz3[0][2]);  //Imprime 7
  print('****************************************');

  //Modificar los elementos de la matriz.
  matriz3 [2][1] = 7;
  matriz3 [2][3] = 11;
  print(matriz3[2][1]);
  print(matriz3[2][3]);
  print(matriz3);

  //Tamaño matriz
  print("Cantidad Filas ${matriz3.length}");
  print("Cantidad Columnas ${matriz3[0].length}");
  print('*****************************************');

  //Imprimir todos los elementos de la lista.            //Primera forma de hacerlo
  //Recorre las Filas
  // for (int fila = 0; fila < matriz3.length; fila++) {   
  //   print("");
  //   // print("|${matriz3[fila][0]}|");
  //   // print("|${matriz3[fila][1]}|");
  //   //Recorre las Columnas 
  //   for (int columna = 0; columna < matriz3[0].length; columna++) {  
  //     stdout.write("|${matriz3[fila][columna]}|");
  
  //   }
  // }

  //Imprimir todos los elementos de la lista.           //Segunda forma de hacerlo
  //Recorre las Filas
  for (int fila = 0; fila < matriz3.length; fila++) {   
    stdout.write("|");    //Cuando inicia una fila
    //Recorre las Columnas 
    for (int columna = 0; columna < matriz3[0].length; columna++) {  
      stdout.write("${matriz3[fila][columna]}|");
    }
    print("");
  }
}