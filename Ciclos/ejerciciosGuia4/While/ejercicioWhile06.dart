import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO WHILE 06
  /*
    6. Calcular el promedio de edades de hombres, mujeres y 
       de todo un grupo de n alumnos.
  */

   //DECLARACION VARIABLES
   double promedio, promHombres, promMujeres;
   int cantAlumnos, contadorHombres = 0, contadorMujeres = 0;
   int contador = 0, edad, sumaHombres = 0, sumaMujeres = 0;
   int sumaTotal = 0;
   String? genero;

   //ENTRADA DATOS 
   print ("Cual es la cantidad de alumnos ?");
   cantAlumnos = int.parse(stdin.readLineSync()!);

   //ENTRADA DATOS - PROCESOS FORMULAS - SALIDA DATOS. 
   while ( contador < cantAlumnos ) {
    print ("Cual es su genero y edad ?");
    genero = stdin.readLineSync();
    edad = int.parse(stdin.readLineSync()!);
    if ( genero!.toUpperCase() == "H" ) {
      sumaHombres += edad;
      contadorHombres++;
    }
    else if ( genero.toUpperCase() == "M" ) {
           sumaMujeres += edad;
           contadorMujeres++;
         }
         else {
          print ("Genero no valido");
         }
    contador++;
   }
   sumaTotal = sumaMujeres + sumaHombres;
   promedio = sumaTotal / cantAlumnos;
   promMujeres = sumaMujeres / contadorMujeres;
   promHombres = sumaHombres / contadorHombres;
   print ("El promedio de edades del grupo es: $promedio");
   print ("El promedio de mujeres del grupo es: $promMujeres");
   print ("El promedio de hombres del grupo es: $promHombres");
}