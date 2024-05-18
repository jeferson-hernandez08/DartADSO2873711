import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO WHILE 05
  /*
    5. Obtener el promedio de calificaciones de un grupo de n alumnos.
  */

  //DECLARACION VARIABLES
  int contador = 0;            //Variable Contador o valor inicial del while
  double suma = 0;             //Variable Acumulador 
  int alumnos; 
  double califAlumno, promedioGrupo;

  //ENTRADA DATOS     //Imaginacion que este es el diagrama de flujo tic del profe
  print("Ingrese cantidad de alumnos:");
  alumnos = int.parse(stdin.readLineSync()!);
  
  //ENTRADA DATOS - PROCESOS FORMULAS - SALIDA DATOS.
  while ( contador < alumnos  ) {
    print("Ingrese la calificacion de alumno ${contador+1}:");
    califAlumno =  double.parse(stdin.readLineSync()!);
    while ( califAlumno < 0 || califAlumno > 5 ) {              //Validamos rando de calificacion.
      print("La calificacion esta fuera de rango, intente nuevamente");
      print("Ingrese la calificacion de alumno ${contador+1}:");
      califAlumno =  double.parse(stdin.readLineSync()!);
    }
    suma = suma + califAlumno;
    print("La suma de las calificaciones de los alumnos va en $suma");
    contador++;
  }
  promedioGrupo = suma / alumnos; 
  print("El promedio total del grupo, los $alumnos alumnos es de: $promedioGrupo ");
}