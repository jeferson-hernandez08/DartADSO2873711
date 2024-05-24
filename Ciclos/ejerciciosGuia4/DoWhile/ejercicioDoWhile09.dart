import 'dart:io';
import 'dart:math';

void main() {
//JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO DO WHILE 09.
  /*
    9.  Escribir un programa que muestre el siguiente menú y que permita pasar magnitudes de grados a 
        radianes y de radianes a grados.
        1. Pasar de grados a radianes
        2. Pasar de radianes a grados
        3. Salir del programa
  */

  //DECLARACION VARIABLES 
  int opcion;         //Variable para preguntar opcion.
  double resultado, grados, radianes;

  //ENTRADA DATOS - PROCESOS FORMULAS - SALIDA DATOS.
  do {
    print ("***********************************");
    print ("Bienvenido a coversion:");
    print ("1. Pasar de grados a radianes ");
    print ("2. Pasar de radianes a grados");
    print ("3. Salir del programa");
    print ("***********************************");
    print ("Digite la opcion deseada");
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
          print("1. Vamos a convertir de grados a radianes:");
          print("Ingrese los grados");
          grados = double.parse(stdin.readLineSync()!);
          resultado = grados * (pi / 180);      //formula grados a radianes
          print("Los $grados grados ingresados son $resultado radianes");
      break;
      case 2:
          print("2. Vamos a convertir de radianes a grados:");
          print("Ingrese los radianes");
          radianes = double.parse(stdin.readLineSync()!);
          resultado = radianes * (180 / pi);    //formula radianes a grados
          print("Los $radianes radianes ingresados son $resultado grados"); 
        break;
      case 3:
          print("'Hasta pronto'");
      break;
      default:
        print("Opcion incorrecta, Ingrese una opcion del 1 al 3.");
    }
  }
  while ( opcion != 3 );

}