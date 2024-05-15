import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO FOR 01
  /*
    1. Calcular el promedio de un alumno que tiene 7 calificaciones 
       en la materia de Diseño Estructurado de Algoritmos.
  */

  //DECLARACION VARIABLES
  int    cantnotas = 7;  //Se realiza varible para condicion de parada, ya sea configurar hasta donde queremos que pare.
  double suma = 0;       //Variable acumulador.
  double calificacion;
  double promedio;

  //ENTRADA DATOS - PROCESOS - FORMULAS - SALIDA.
  for ( int i = 0; i < cantnotas ; i ++) {
    print("Ingrese la calificacion " + (i+1).toString());
    calificacion = double.parse(stdin.readLineSync()!);
    suma = suma + calificacion;          //Acumulacion.
    print ("La suma para el promedio va en : $suma");
  }
  promedio = suma / cantnotas;
  print ("Su promedio total es de : $promedio");
}