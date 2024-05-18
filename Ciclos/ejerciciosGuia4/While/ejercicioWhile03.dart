import 'dart:io';

void main() {
   //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO WHILE 03
  /*
    3. Determinar cuantos hombres y cuantas mujeres se encuentran en un grupo de n personas, 
       suponiendo que los datos son extraídos alumno por alumno. 
  */

   //DECLARACION VARIABLES
   int contador = 0;                       //Variable contador o valor inicial del while
   int cantEstudiantes;
   int hombres = 0, mujeres = 0;          //Variable contador 
   String? genero;
  
   //ENTRADA DATOS 
    print ("Ingrese cantidad de estudiantes:");
    cantEstudiantes = int.parse(stdin.readLineSync()!);

    //ENTRADA DATOS - PROCESOS FORMULAS - SALIDA DATOS.
    while ( contador < cantEstudiantes ) {
      print ("Estudiante # "  + (contador+1).toString());
      print ("Ingrese M si es Hombre o F si es Mujer:");
      genero = stdin.readLineSync();
      if ( genero!.toUpperCase() == "M" ) {
        hombres++;
        print ("El numero de hombres va en: $hombres");
      }
      else if ( genero.toUpperCase() == "F" ) {
        mujeres++;
        print ("El numero de mujeres va en: $mujeres");
      }
      contador++;
    }
    print ("____________________________________");
    print ("Las cantidad de hombres es: $hombres");
    print ("Las cantidad de mujeres es: $mujeres");
}