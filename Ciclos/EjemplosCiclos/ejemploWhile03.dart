import 'dart:io';

void main() {
  /*
    Desarrollar un algoritmo que lea n numeros positivos, determine y muestre el promedio 
    de los n numeros positivos.
  */
  
  int cantNum, contador = 0, num, suma = 0;
  double promedio;

  print("Ingrese la cantidad de numeros:" );
  cantNum = int.parse(stdin.readLineSync()!);  

  while ( contador < cantNum ) {
    print("Ingrese un numero positivo");                       
    num = int.parse(stdin.readLineSync()!);         
    if ( num > 0) {      
      suma = suma + num;
      contador++;                       
    }
    else {
      print("El numero digitado no es positivo");
    }
  }
  promedio = suma / contador;
  print("El promedio es: $promedio");
}

/*          DIAGRAMA DE FLUJO 
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
