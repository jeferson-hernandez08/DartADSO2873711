import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO -  EJERCICIO CONDICIONAL ANIDADO 07
  /*
    7.  Leer 2 números; si son iguales que los multiplique, si el primero es mayor que el segundo que los 
        reste y si no que los sume.
  */ 

  //DECLARACION VARIABLES
  double num1, num2, resultado;

  //ENTRADADATOS
  print ("Ingrese numero 1:");
  num1 = double.parse(stdin.readLineSync()!);
  print ("Ingrese numero 2:");
  num2 = double.parse(stdin.readLineSync()!);

  //PROCESO - FORMULAS - SALIDA
  if ( num1 == num2 ) {
    resultado = num1 * num2;
    print ("Los dos numeros son iguales"); 
    print ("La multiplicacion de ambos numeros es de : $resultado"); 
  }
  else if ( num1 > num2 ) {
        resultado = num1 - num2;
        print ("El numero uno es mayor que el numero dos"); 
        print ("La resta de ambos numeros es de : $resultado");
       }
       else {
        resultado = num1 + num2;
        print ("El numero dos es mayor que el numero uno"); 
        print ("La suma de ambos numeros es de : $resultado");
       }
}