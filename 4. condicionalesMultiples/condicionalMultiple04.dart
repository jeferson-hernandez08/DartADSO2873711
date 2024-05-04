import 'dart:io';
import 'dart:math';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO -  EJERCICIO CONDICIONAL MULTIPLE 04
  /*
   4. Calcular el valor de f(x) según la expresión.
  
              x ^ 2        Si x mod 4 = 0
      f(x)    x / 6        Si x mod 4 = 1
              Raiz(x)      Si x mod 4 = 2
              X ^ 3 + 5    Si x mod 4 = 3
  */ 

  //DECLARACION VARIABLES
  double variable;
  double resultado, clave;
  num exponente;

  //ENTRADA DATOS
  print ("Ingrese valor de la variable:");
  variable = double.parse(stdin.readLineSync()!);    // NO QUIERE DAR REVISAR.

  //PROCESO - FORMULAS
  clave = variable % 4;
  switch ( clave ) {
    case 0:
      exponente = pow(variable, 2);
      print("El resultado del caso de esta operacion x ^ 2  es: $exponente");
      print("La clave del modulo de este caso es $clave");
    break;
    case 1:
      resultado = variable / 6;
      print("El resultado del caso de esta operacion x / 6  es: $resultado");
      print("La clave del modulo de este caso es $clave");
    break;
    case 2:
      resultado = sqrt(variable);
      print("El resultado del caso de esta operacion Raiz(x)  es: $resultado");
      print("La clave del modulo de este caso es $clave");
    break;
    case 3:
      resultado = ((pow(variable, 3)) + 5);
      print("El resultado del caso de esta operacion X ^ 3 + 5  es: $resultado");
      print("La clave del modulo de este caso es $clave");
    break;
    default: 
      print("No se puede realizar la operacion");
    break;
  }
}
    





  
   





