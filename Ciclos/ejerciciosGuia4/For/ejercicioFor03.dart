import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO FOR 03
  /*
    3. Leer 20 números e imprimir cuantos son positivos, cuantos negativos y cuantos cero.

  */

  //DECLARACION VARIABLES
  int num;

  //ENTRADA DATOS - PROCESOS - FORMULAS - SALIDA.    //Prueba funcionamineto
  for ( int i = 0; i <= 19 ; i ++) {
    print ("Ingrese numero " + (i+1).toString());
    num = int.parse(stdin.readLineSync()!);
    if ( num >= 0 ) {
       print ("El numero es positivo y es: $num");
    }
    else {
      print ("El numero es negativo: NO SE IMPRIME");
    }
  }
}