import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO FOR 03
  /*
    3. Leer 20 números e imprimir cuantos son positivos, cuantos negativos y cuantos cero.

  */

  //DECLARACION VARIABLES
  int num;
  int cantNumeros = 20;
  int numPositivos = 0, numNegativos = 0, numCeros = 0   ;      //Variable contador.

  //ENTRADA DATOS - PROCESOS - FORMULAS - SALIDA.    
  for ( int i = 0; i < cantNumeros ; i ++) {
    print ("Ingrese numero " + (i+1).toString());
    num = int.parse(stdin.readLineSync()!);
    if ( num > 0 ) {
      print("El numero es positivo");
      numPositivos++;          //numPositivos = numPositivos + 1;
    }
    else if ( num < 0 ) {
          print("El numero es negativo");
          numNegativos++;     //numNegativos = numNegativos + 1;
         }
         else {
          print("El numero es cero");
          numCeros++;     //numCeros = numCeros + 1;
         }
  }
  print("Los numeros positivos son: $numPositivos");
  print("Los numeros negativos son: $numNegativos");
  print("Los numeros ceros son: $numCeros");
}