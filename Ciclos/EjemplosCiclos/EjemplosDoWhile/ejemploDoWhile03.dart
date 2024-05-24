import 'dart:io';

void main() {
   //JEFERSON MAURICIO HERNANDEZ LADINO - EJEMPLO DO WHILE 03.
  /*
    3. Realizar un algoritmo que permita solicitar una clave numérica al usuario y no permitir continuar
       hasta que no ingrese la clave válida
  */

  //DECLARACION VARIABLES
  String? clave;
  double resultado;
  int contador = 0;

  //ENTRADA DATOS - PROCESO FORMULA - SALIDA DATOS
  do {
    print ("Bienvenido Ingrese clave:");
    clave = stdin.readLineSync()!;
    if ( clave == "123") {
      print ("La clave es correcta bienvenido");
    }
    else if (  clave == "123" ) {
          print ("La clave es incorrecta intente de nuevo");    //quedamos aqui. Meter si se hace mas de tres intentos de bloquea
          contador++;
          print ("$contador");
         } 
         else {                                

         }
  }
  while ( clave != "123" );
}