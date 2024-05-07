import 'dart:io';

void main() {
  print("Imprimir numeros pares digitados por el usuario");
  int num = -1;

  while ( num != 0 ) {
    print("Ingrese un numero (cero para salir)");
    num = int.parse(stdin.readLineSync()!);
    if ( num % 2 == 0) {
    //Comprobar si es par
      print("El numero es par");
    }
    else {
      print("El numero es impar");
    }
  }
  print("HASTA PRONTO");
}

