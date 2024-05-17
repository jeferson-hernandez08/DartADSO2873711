import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO -  EJERCICIO CONDICIONAL ANIDADO 04
  /*
    4.  En un montallantas se ha establecido una promoción de las llantas marca “Ponchadas”, dicha 
        promoción consiste en lo siguiente:
        Si se compran menos de cinco llantas el precio es de $90000 cada una, de $80000 si se compran de 
        cinco a 10 y de $70000 si se compran más de 10. Obtener la cantidad de dinero que una persona 
        tiene que pagar por cada una de las llantas que compra y la que tiene que pagar por el total de la 
        compra
  */ 

  //DECLARACION VARIABLES
  double cantidadLlantas, totalCompra, promocion1, promocion2, promocion3;

  //ENTRADADATOS
  print ("Ingrese cantidad de llantas a comprar:");
  cantidadLlantas = double.parse(stdin.readLineSync()!);

  //ASIGNACION VARIABLES
  promocion1 = 70000;
  promocion2 = 80000;
  promocion3 = 90000;

  //PROCESO - FORMULAS
  if ( cantidadLlantas > 10 ) {
    totalCompra = promocion1 * cantidadLlantas;
    print ("Tienes promocion por la compra de mas de 10 llantas, pagas a $promocion1 pesos por cada una");
    print ("El total a pagar con la promocion es de: $totalCompra pesos");
  }
  else if (  cantidadLlantas >= 5 ) {
        totalCompra = promocion2 * cantidadLlantas;
        print ("Tienes promocion por la compra de 5 a 10 llantas, pagas a $promocion2 pesos por cada una");
        print ("El total a pagar con la promocion es de: $totalCompra pesos");
       }
       else {
         totalCompra = promocion3 * cantidadLlantas;
         print ("Tienes promocion por la compra de menos de 5 llantas, pagas a $promocion3 pesos por cada una");
         print ("El total a pagar con la promocion es de: $totalCompra pesos");
       }
}