import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO LISTA/ARREGLO 09.
  /*
    9. Una agencia de seguros desea obtener un reporte al final del día de sus n empleados para determinar
       cuál fue el empleado que obtuvo el mayor sueldo en base a sus ventas y comisiones, se registrará el
       nombre del empleado la edad y el sueldo que obtuvo al final del día. Desarrollar un programa que
       pida al usuario el nombre de los n empleados, su edad y el sueldo para generar un reporte que lo
       muestre en pantalla de la siguiente manera: el nombre del empleado, edad, sueldo, el empleado con
       mayor sueldo, el sueldo del empleado que gana más y su edad.

       Debe declarar un arreglo de enteros para la edad.
       Debe declarar un arreglo de reales para el sueldo.
       Debe declarar un arreglo de cadena para el nombre.

  */

  //DECLARACION VARIABLES LISTAS 
  List <String> nombresEmpleados = [];
  List <int> edadesEmpleados = [];
  List <double> sueldosEmpleados = [];
  int cantEmpleados = 5;         //Cantidad de empleados.
  int cantEdades = 5;
  int cantSueldos = 5;
  String empleado;
  int edad;
  double sueldo;

  //PROCESOS FORMULAS - ENTRADA DATOS - SALIDA DATOS. 
  for ( int i = 0; i < cantEmpleados; i++ ) {      //Ciclo para cargar los nombres al vector.
    print("Ingrese el empleado # ${i + 1 }: ");
    empleado = stdin.readLineSync()!;
    nombresEmpleados.add(empleado);
    print("El vector va en :");
    print(nombresEmpleados);
  }

  for ( int i = 0; i < cantEdades; i++ ) {    //Ciclo para cargar las edades al vector.
    print("Ingrese edad del empleado # ${i + 1 } ${nombresEmpleados[i]}:");
    edad = int.parse(stdin.readLineSync()!);
    edadesEmpleados.add(edad);
    print("El vector edades va en :");
    print(edadesEmpleados);
  }

  for ( int i = 0; i < cantSueldos; i++) {
    print("Ingrese sueldo del empleado # ${i + 1} ${nombresEmpleados[i]}:");
    sueldo = double.parse(stdin.readLineSync()!);
    sueldosEmpleados.add(sueldo);
    print("El vector sueldos va en :");
    print(sueldosEmpleados);
  }

  //SALIDA DATOS.
  for ( int i = 0; i < nombresEmpleados.length; i++ ) {
    print("Los datos del empleado # ${i+1}: ${nombresEmpleados[i]}, ${edadesEmpleados[i]}, ${sueldosEmpleados[i]}");



  }





}
    