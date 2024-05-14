import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO FOR 04
  /*
    4. 

  */

  //DECLARACION VARIABLES
  int num;
  int numPositivos = 0, numNegativos = 0, numCeros = 0   ;        //Variable acumulador.

  //ENTRADA DATOS - PROCESOS - FORMULAS - SALIDA DATOS.    
  for ( int i = 0; i <= 19 ; i ++) {
    print ("Ingrese numero " + (i+1).toString());
    num = int.parse(stdin.readLineSync()!);
    if ( num > 0 ) {
    numPositivos = numPositivos + 1;
    }
    else if ( num < 0 ) {
          numNegativos = numNegativos + 1;
         }
         else {
          numCeros = numCeros + 1;
         }
  }
 
}