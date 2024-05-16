import 'dart:io';

void main() {
   //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO WHILE 03
  /*
    3. Determinar cuantos hombres y cuantas mujeres se encuentran en un grupo de n personas, 
       suponiendo que los datos son extraídos alumno por alumno. 
  */

   //DECLARACION VARIABLES
   int contador = 0, cantEstudiantes;     //Variable contador y valor inicial 
   int hombres = 0, mujeres = 0;          //Variable contador 
   String? genero;
  
   //ENTRADA DATOS 
    print ("Ingrese cantidad de estudiantes:");
    cantEstudiantes = int.parse(stdin.readLineSync()!);

    //PROCESOS FORMULAS - SALIDA DATOS.
    while ( contador < cantEstudiantes ) {
      print ("Estudiante # "  + (contador+1).toString());
      print ("Ingrese M si es Hombre o F si Mujer:");
      genero = stdin.readLineSync();
      if ( genero == "m" ) {
        hombres++;
        print ("El numero de hombres va en: $hombres");
        contador++;
      }
      else if ( genero == "f" ) {
        mujeres++;
        print ("El numero de mujeres va en: $mujeres");
        contador++;
      }
    }
    print ("Las cantidad de hombres es: $hombres");
    print ("Las cantidad de mujeres es: $mujeres");
}