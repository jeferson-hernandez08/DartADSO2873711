import 'dart:io';

void main() {
  /*
    Desarrollar un algoritmo tal que , dado como datos
    10 numeros enteros, obtenga la suma de los 10 numeros enteros.
    Se mostrara la suma de dichos numeros.
  */
  int num;
  int suma = 0; // Vble tipo ACUMULADOR.

  for (int i = 0; i < 10; i ++) {
    print("Digite el numero");
    num = int.parse(stdin.readLineSync()!);
    //Se van guardando la suma de los numeros.
    suma = suma + num;   //suma +=num.          // Esta variables suma se guarda con el primer numero ingresado y se suma
    print("La suma va en: $suma");                 // de nuevo con el segundo numero que se ingresa y asi sucesivamente.
  }
  print("La suma es: $suma"); 
}