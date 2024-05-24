import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO DO WHILE 06.
  /*
    6.  Leer por cada alumno de Diseño estructurado de algoritmos su número de control y su calificación en 
        cada una de las 5 unidades de la materia. Al final que escriba el número de control del alumno que 
        obtuvo mayor promedio. Suponga que los alumnos tienen diferentes promedios.
  */

  //DECLARACION VARIABLES
  double calificacion, prom, mayorPromedio = 0, sumaCalific = 0;
  int numControl = 0, cantEstudiantes, contador = 0;
  
  //ENTRADA DATOS - PROCESOS FORMULAS - SALIDA DATOS. 
  print("Cuantos estudiantes estan en el curso");
  cantEstudiantes = int.parse(stdin.readLineSync()!);
  do {
    print("Estudiante # ${contador+1}");
    for (int i = 0; i < 5; i++) {         //For para cantidad de notas.
      print("Digite la nota ${i+1}");
      calificacion = double.parse(stdin.readLineSync()!);
      while ( calificacion < 0 || calificacion > 5) {
        print("Nota incorrecta, ingrese de nuevo la nota");
        calificacion = double.parse(stdin.readLineSync()!);
      }
      sumaCalific += calificacion;
    }
    prom = sumaCalific / 5;
    if ( prom > mayorPromedio ) {
      mayorPromedio = prom;
      numControl = contador + 1;
      print("Hasta el momento el mayor promedio es: $mayorPromedio");
    }
    print('*' * 50);
    contador++;
  }
  while ( contador < cantEstudiantes );

  print("El mayor promedio es: $mayorPromedio");
  print("El numero de control del mejor estudiante es: $numControl");

}