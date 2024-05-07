import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO -  EJERCICIO CONDICIONAL MULTIPLE 06
  /*
   6. Desarrollar un algoritmo que lea el nombre del mes y el año e imprima en pantalla cuantos días tiene. 
      Es necesario tener en cuenta si es año bisiesto o no.
  */ 

  //DECLARACION VARIABLES
  String? nombreMes;
  int anio, dias;

  //ENTRADA DATOS       
  print("Ingrese el nombre del mes:");
  nombreMes = stdin.readLineSync();
  print("Ingrese el año:");
  anio = int.parse(stdin.readLineSync()!);

  //PROCESO - FORMULAS - SALIDA 
  switch (nombreMes) {
    case "enero":        //Se separan los meses que tienen 31 dias.
      dias = 31;
    break;
    case "marzo":
      dias = 31;
    break;
    case "mayo":
      dias = 31;
    break;
    case "julio":
      dias = 31;
    break;
    case "agosto":
      dias = 31;
    break;
    case "octubre":
      dias = 31;
    break;
    case "diciembre":
      dias = 31;
    break;
    case "febrero":    //Mes de febrero que se declara año bisiesto o no. 
      if ((anio % 4 == 0 && anio % 100 != 0) || anio % 400 == 0) {   //Realizamos con el modulo si es igual a cero para ver si es divisible
        dias = 29;
        print('El mes de febrero tiene 29 días en un año bisiesto.');
      } 
      else {
        dias = 28;
        print('El mes de febrero tiene 28 días en un año no bisiesto.');
      }
    break;
    case "abril":     //Se separan los meses que tienen 30 dias.
      dias = 30;
    break;
    case "junio":
      dias = 30;
    break;
    case "septiembre":
      dias = 30;
    break;
    case "noviembre":
      dias = 30;
    break;
    default:
      print("Mes no válido");
    return;
  }

  //SALIDA DATOS
  print("El mes $nombreMes, del año $anio tiene $dias dias");
}