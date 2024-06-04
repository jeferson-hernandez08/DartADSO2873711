import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO LISTA/ARREGLO 05.
  /*
    5. Diseñe un algoritmo que lea un número cualquiera y lo busque en el vector X, el cual tiene
       almacenados 12 elementos. Escribir la posición donde se encuentra almacenado el número en el
       vector o el mensaje “NO” si no lo encuentra.
  */
  
  //DECLARACION/ASIGNACION VARIABLES LISTAS      //Segunda forma de hacerlo
  List<int> vectorX = [];
  int numBuscar = 15, cantElementos = 5, num;
  int pocision = -1;
  bool encontrado = false;

  //PROCESOS FORMULAS - ENTRADA DATOS - SALIDA DATOS. 
  //Ciclo para llenar vector
  for (int i = 0; i < cantElementos; i++ ) {
    print("Ingrese le numero # ${i+1}");
    num = int.parse(stdin.readLineSync()!);
    vectorX.add(num);
  }
  print("Ingrese un numero para buscar en el vector:");
  numBuscar = int.parse(stdin.readLineSync()!);
  //Ciclo para buscar el elemento.
  for (int i = 0; i < vectorX.length; i++){
    if(numBuscar == vectorX[i]) {
      pocision = i;
      encontrado = true;
      break;  //Rompe el ciclo y se sale por si queremos el primero de la lista.
    }
  }
  //Validacion de la posicion.
  if (encontrado == true) {
    print("El numero de se encuentra en la pocision $pocision");
  }
  else {
    print("El numero no se encontro");
  }
}