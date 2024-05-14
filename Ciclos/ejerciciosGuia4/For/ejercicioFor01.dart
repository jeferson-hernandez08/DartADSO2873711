import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO FOR 01
  /*
    1. Calcular el promedio de un alumno que tiene 7 calificaciones 
       en la materia de Diseño Estructurado de Algoritmos.
  */

  //DECLARACION VARIABLES
  double suma = 0;    //Variable tipo contador.
  double calificacion;
  double promedio;

  //ENTRADA DATOS - PROCESOS - FORMULAS - SALIDA.
  for ( int i = 0; i <= 6 ; i ++) {
    print("Ingrese la calificacion " + (i+1).toString());
    calificacion = double.parse(stdin.readLineSync()!);
    suma = suma + calificacion;
    print ("La suma para el promedio va en : $suma");
  }
  promedio = suma / 7;
  print ("Su promedio total es de : $promedio");
}