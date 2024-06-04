void main () {
  //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO LISTA/ARREGLO 08.
  /*
    8. Consultar el método de ordenación por burbuja y ordenar un arreglo entero de 10 elementos.
  */

  //DECLARACION VARIABLES LISTAS 
  List<int> vector = [6,5,3,1,8,7,2,4];  //Se realiza de 8 numeros enteros.
  int auxiliar;

  //PROCESOS FORMULAS - ENTRADA DATOS - SALIDA DATOS. 
  print(vector);
  print('*' * 30);
  for (var i = 0; i < vector.length; i++) {
    for (var j = 0; j < vector.length - i - 1; j++) {
      if (vector[j] > vector [j + 1]) {
        auxiliar = vector[j];
        vector[j] = vector[j + 1];
        vector[j + 1] = auxiliar;
      }
      print(vector);
    }
  }
  print('*' * 30);
  print(vector);
} 

  //Variable auxiliar
  // int a = 5;
  // int b = 4;
  // int auxiliar;

  // auxiliar = a;
  // a = b;
  // b = auxiliar;