import 'dart:io';

void main() {
  /*
    Desarrollar un algoritmo tal que , dado como datos
    10 numeros enteros, obtenga la suma de los 10 numeros enteros.
    Se mostrara la suma de dichos numeros.
    Adicional vamos a sacar el promedio. 
    Mostrar mensaje: "Digite 1, Digite numero 2,"
  */
  int num;
  int suma = 0; // Variable tipo ACUMULADOR.
  double promedio;
  int cant = 10;

  for (int i = 0; i < cant; i ++) {
    print("Digite el numero " + (i+1).toString());
    num = int.parse(stdin.readLineSync()!);
    //Se van guardando la suma de los numeros.
    suma = suma + num;   //suma +=num.          // Esta variables suma se guarda con el primer numero ingresado y se suma
    promedio = suma / cant;
    print("La suma va en: $suma");                 // de nuevo con el segundo numero que se ingresa y asi sucesivamente.
    print("El promedio va en: $promedio %"); 
  }
    promedio = suma / cant;
    print("La suma es: $suma"); 
    print("El promedio va en: $promedio %"); 
}