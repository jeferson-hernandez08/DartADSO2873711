import 'dart:io';

void main() {
//JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO DO WHILE 07.
  /*
    7.  Hacer un programa que lea caracteres desde teclado hasta que lea 10 veces la letra 'a'. Por cada 
        carácter leído que no sea una 'a' debe mostrar un mensaje indicándolo. Cuando lea las 10 letras 'a' 
        el programa terminará.
  */

  //DECLARACION VARIABLES 
  int contador = 0;           //Variable Contador o valor inicial del while
  int cantiCaracteres = 10;   //Variable para asignar la cantidad. Condicion de parada while.
  String? caracterVocal;
  int caracterA = 0;        //Variable contador

  //ENTRADA DATOS - PROCESOS FORMULAS - SALIDA DATOS. 
  do {
    print("Ingrese caracter # ${contador + 1}");
    caracterVocal = stdin.readLineSync();
    if ( caracterVocal != "a" ) {
      print("El caracter ingresado $caracterVocal No es 'a'");
      print("Ingrese nuevamente caracter:");
    }
    else {
      caracterA++;
      print("Van $caracterA caracteres 'a'");
      contador++;
    }
  }
  while ( contador < cantiCaracteres );

}