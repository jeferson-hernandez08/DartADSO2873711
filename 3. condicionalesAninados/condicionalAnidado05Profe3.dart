import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO -  EJERCICIO CONDICIONAL ANIDADO 05
  /*
    5. Una frutería ofrece las manzanas con descuento según la siguiente tabla:
       
       NUM. DE KILOS COMPRADOS   % DESCUENTO
              0 - 2                   0
              2.01 - 5                10
              5.01 - 10               15
              10.01 en adelante       20
       
       Determinar cuanto pagara una persona que compre manzanas es esa frutería sabiendo que el kilo 
       vale $1300
  */ 

  //DECLARACION VARIABLES
  double kilos, descuento, totalPagar, precioKilo;

  //ENTRADADATOS
  print("Ingrese numero de kilos a comprar:");
  kilos = double.parse(stdin.readLineSync()!);
  
  //ASIGNACION VARIABLES
  precioKilo = 1300;
  descuento = 0;
  
  //PROCESO - FORMULAS 
  totalPagar = precioKilo * kilos;
  if ( kilos > 10 ) {
    print("Se obtiene un 20% de descuento");
    descuento = totalPagar * 0.20;
    // print("No se tuvo descuento");
  } else if ( kilos > 5 ) {
      print("Se obtiene un 15% de descuento");
      descuento = totalPagar * 0.15;
    } else if ( kilos > 2 ) {
      print("Se obtiene un 10% de descuento");
      descuento = totalPagar * 0.10;
    }
  else  {
    print("No se tuvo descuento");
  }
  totalPagar = totalPagar - descuento;
  //SALIDA DATOS
  print("El total a pagar es de: $totalPagar");  
}

