import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO -  EJERCICIO CONDICIONAL MULTIPLE 02
  /*
   2.	Una compañía de fumigación utiliza aviones para fumigar las cosechas contra una gran variedad de plagas. Las cantidades que la compañía cobra a los granjeros depende de qué es lo que se desea fumigar y del número de hectáreas que se desea fumigar, de acuerdo con la siguiente distribución: 

        Tipo 1: Fumigación contra malas hierbas, $50000 por hectárea 
        Tipo 2: Fumigación contra moscas y mosquitos, $70000 por hectárea 
        Tipo 3: Fumigación contra gusanos, $80000 por hectárea. 
        Tipo 4: Fumigación contra todo lo anterior, $190000 por hectárea.  
        
    • Si el área a fumigar es mayor de 100 hectáreas, el granjero goza de un 5% de   descuento.
    • Además, si la cuenta total sobrepasa el $1000000 se hace acreedor a un 10% de descuento sobre la cantidad que sobrepase el $1000000. 
    • Si ambos descuentos son aplicables, el correspondiente a la superficie se considera primero.

    Diseñe el programa que lea el nombre del granjero, el tipo de fumigación solicitada (1-4) y el número de hectáreas a fumigar.

    Se debe imprimir el nombre del granjero y la cuenta total.
       
  */ 

  //DECLARACION VARIABLES
  String? nombreGranjero;
  double hectares, tipoFumigacion, totalPagar, descuento;

  //ENTRADA DATOS
  print("Cual es su nombre del granjero:");
  nombreGranjero = stdin.readLineSync(); 
  print("Ingrese numero de hectares a fumigar:");
  hectares = double.parse(stdin.readLineSync()!); 
  print("Ingrese tipo de fumigacion que desea realizar:");
  tipoFumigacion = double.parse(stdin.readLineSync()!); 
  
  //PROCESO - FORMULAS
  switch (tipoFumigacion) {
    case 1: 
      totalPagar = hectares * 50000;     //Se mueve aqui para que empize a validar toso el case.
      if ( hectares > 100 ) {
        descuento = totalPagar * 0.05;
        totalPagar = totalPagar - descuento;
        print("Tienes el 5 % descuento por la fumigacion de mas de 100 hectareas.");
        print("Su nombre de granjero es: $nombreGranjero");
        print("El total a pagar por el tipo de fumigacion $tipoFumigacion es de $totalPagar pesos");
      }
      else if ( totalPagar > 1000000 ) {
            descuento = totalPagar * 0.10;
            totalPagar = totalPagar - descuento;
            print("Tienes el 10 % descuento por la cuenta total de mas de 1000000 de pesos.");
            print("Su nombre de granjero es: $nombreGranjero");
            print("El total a pagar por el tipo de fumigacion $tipoFumigacion es de $totalPagar pesos");
           }
           else {
            print("Su nombre de granjero es: $nombreGranjero");
            print("El total a pagar por el tipo de fumigacion $tipoFumigacion es de $totalPagar pesos");
           }
    break;
    case 2: 
      totalPagar = hectares * 70000;     //Se mueve aqui para que empize a validar toso el case.
      if ( hectares > 100 ) {
        descuento = totalPagar * 0.05;
        totalPagar = totalPagar - descuento;
        print("Tienes el 5 % descuento por la fumigacion de mas de 100 hectareas.");
        print("Su nombre de granjero es: $nombreGranjero");
        print("El total a pagar por el tipo de fumigacion $tipoFumigacion es de $totalPagar pesos");
      }
      else if ( totalPagar > 1000000 ) {
            descuento = totalPagar * 0.10;
            totalPagar = totalPagar - descuento;
            print("Tienes el 10 % descuento por la cuenta total de mas de 1000000 de pesos.");
            print("Su nombre de granjero es: $nombreGranjero");
            print("El total a pagar por el tipo de fumigacion $tipoFumigacion es de $totalPagar pesos");
           }
           else {
            print("Su nombre de granjero es: $nombreGranjero");
            print("El total a pagar por el tipo de fumigacion $tipoFumigacion es de $totalPagar pesos");
           }
    break;
    case 3: 
      totalPagar = hectares * 80000;     //Se mueve aqui para que empize a validar toso el case.
      if ( hectares > 100 ) {
        descuento = totalPagar * 0.05;
        totalPagar = totalPagar - descuento;
        print("Tienes el 5 % descuento por la fumigacion de mas de 100 hectareas.");
        print("Su nombre de granjero es: $nombreGranjero");
        print("El total a pagar por el tipo de fumigacion $tipoFumigacion es de $totalPagar pesos");
      }
      else if ( totalPagar > 1000000 ) {
            descuento = totalPagar * 0.10;
            totalPagar = totalPagar - descuento;
            print("Tienes el 10 % descuento por la cuenta total de mas de 1000000 de pesos.");
            print("Su nombre de granjero es: $nombreGranjero");
            print("El total a pagar por el tipo de fumigacion $tipoFumigacion es de $totalPagar pesos");
           }
           else {
            print("Su nombre de granjero es: $nombreGranjero");
            print("El total a pagar por el tipo de fumigacion $tipoFumigacion es de $totalPagar pesos");
           }
    break;
    case 4: 
      totalPagar = hectares * 190000;     //Se mueve aqui para que empize a validar toso el case.
      if ( hectares > 100 ) {
        descuento = totalPagar * 0.05;
        totalPagar = totalPagar - descuento;
        print("Tienes el 5 % descuento por la fumigacion de mas de 100 hectareas.");
        print("Su nombre de granjero es: $nombreGranjero");
        print("El total a pagar por el tipo de fumigacion $tipoFumigacion es de $totalPagar pesos");
      }
      else if ( totalPagar > 1000000 ) {
            descuento = totalPagar * 0.10;
            totalPagar = totalPagar - descuento;
            print("Tienes el 10 % descuento por la cuenta total de mas de 1000000 de pesos.");
            print("Su nombre de granjero es: $nombreGranjero");
            print("El total a pagar por el tipo de fumigacion $tipoFumigacion es de $totalPagar pesos");
           }
           else {
            print("Su nombre de granjero es: $nombreGranjero");
            print("El total a pagar por el tipo de fumigacion $tipoFumigacion es de $totalPagar pesos");
           }
    break;
    default:
      print("La categoria es incorecta.");
     break;
  }
}