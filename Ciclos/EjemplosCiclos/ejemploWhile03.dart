import 'dart:io';

void main() {
  /*
    Desarrollar un algoritmo que lea n numeros positivos, determine y muestre el promedio 
    de los n numeros positivos.
  */
  
  int sum = 0, contador = 0;
  double cantNumeros;

  print("Ingrese la cantidad de numeros positivos:" );
  cantNumeros = double.parse(stdin.readLineSync()!);  //TEMINAMOS AQUI REALIZAR EJERCICIO COMO TAREA

  while ( contador < cantNumeros ) {
    print("Ingrese un numero " + (i + 1).toString());  //Se trata de hacer ejercicio.
    num = double.parse(stdin.readLineSync()!);           //Se usa material de apoyo en internet
    if ( num % 2 == 0) {
    //Comprobar si es par
      print("El numero es par");
    }
    else {
      print("El numero es impar");
    }
  }
}

/*
1. Inicio
2. Leer el valor de n (la cantidad de números)
3. Inicializar una variable suma a 0
4. Inicializar una variable contador a 0
5. Mientras contador < n hacer:
     6. Leer un número
     7. Si el número es positivo:
          8. Sumar el número a la variable suma
          9. Incrementar el contador en 1
     10. Sino:
          11. Mostrar un mensaje de error indicando que el número debe ser positivo
12. Calcular el promedio como suma / n
13. Mostrar el promedio
14. Fin
*/
