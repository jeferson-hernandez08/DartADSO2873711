import 'dart:io';

void main() {
  /*
    Desarrollar un algoritmo que lea n numeros positivos, determine y muestre el promedio 
    de los n numeros positivos.
  */
  
  int cantNumeros = 5;
  double num;

  print("Ingrese la cantidad de notas:" );
  cantNumeros = int.parse(stdin.readLineSync()!);  //TEMINAMOS AQUI REALIZAR EJERCICIO COMO TAREA

  while ( cantNumeros > 0 ) {
    print("Ingrese un numero " + (i + 1).toString());
    num = double.parse(stdin.readLineSync()!);
    if ( num % 2 == 0) {
    //Comprobar si es par
      print("El numero es par");
    }
    else {
      print("El numero es impar");
    }
  }
}

