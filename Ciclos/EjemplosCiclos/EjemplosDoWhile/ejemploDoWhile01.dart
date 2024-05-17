import 'dart:io';

void main() {
   //JEFERSON MAURICIO HERNANDEZ LADINO - EJEMPLO DO WHILE 01.
  /*
    1. 
  */
  
  //DECLARACION VARIABLES
  int num, suma = 0;

  //PROCESO FORMULA - SALIDA DATOS
  do {
    print("Ingrese numero. Cero para salir");
    num =int.parse(stdin.readLineSync()!);
    if ( num > 0 ) {
      suma += num;
    }
  }
  while ( num !=0 );
  print("La suma de los numeros es: $suma");
}