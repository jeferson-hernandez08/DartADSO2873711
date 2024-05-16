import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO FOR 04
  /*
    4. Suponga que se tiene un conjunto de calificaciones de un grupo de 40 alumnos. Realizar un algoritmo 
       para calcular la calificación promedio y la calificación más baja de todo el grupo.
  */

  //DECLARACION VARIABLES
  int cantAlumnos = 4;        //Variable para asignar la cantidad. Condicion de parada.
  double suma = 0;            //Variable acumulador 
  double nota, promedio;
  double notaMenor = 9999;
  double notaMayor = 0;

  //ENTRADA DATOS - PROCESOS - FORMULAS - SALIDA DATOS.    
  for ( int i = 0; i < cantAlumnos; i++) {
    print("Ingrese nota del alumno " + (i + 1).toString());
    nota = double.parse(stdin.readLineSync()!);
    while ( nota < 0 || nota > 5 ) {
      print("La nota esta en rango incorrecto");
      print("Ingrese de nuevo la nota del alumno " + (i + 1).toString());
      nota = double.parse(stdin.readLineSync()!);
      print("______________________________________");
    }
    suma += nota;     // suma = suma + nota;
    if ( nota < notaMenor) {
      notaMenor = nota;
    }
    if ( nota > notaMenor) {
      notaMayor = nota;
    }
    print("Hasta el momento la nota menor es: $notaMenor");
    print("Hasta el momento la nota mayor es: $notaMayor");
  }
  promedio = suma / cantAlumnos;
  print("El promedio es: $promedio");
  print("La nota menor es: $notaMenor");
}