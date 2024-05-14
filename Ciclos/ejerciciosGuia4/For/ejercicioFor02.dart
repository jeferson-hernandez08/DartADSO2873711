import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO FOR 02
  /*
    2.  Leer 10 números e imprimir solamente los números positivos
  */

  //DECLARACION VARIABLES
  int num;

  //ENTRADA DATOS - PROCESOS - FORMULAS - SALIDA.
  for ( int i = 0; i <= 9 ; i ++) {
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