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
  double kilosManza, precioKilo, totalCompra, descuentoManza;

  //ENTRADADATOS
  print("Ingrese numero de kilos a comprar:");
  kilosManza = double.parse(stdin.readLineSync()!);
  
  //ASIGNACION VARIABLES
  precioKilo = 1300;

  //PROCESO - FORMULAS 
  if ( kilosManza > 10 ) {
    totalCompra    = precioKilo * kilosManza;
    descuentoManza = totalCompra * 0.20;
    totalCompra    = totalCompra - descuentoManza;
    print("Tienes decuento del 20% por la compra de mas de 10 kilos");
    print("El total a pagar con el descuento es de : $totalCompra pesos.");
  }
  else if ( kilosManza > 5 ) {
        totalCompra    = precioKilo * kilosManza;
        descuentoManza = totalCompra * 0.15;
        totalCompra    = totalCompra - descuentoManza;
        print("Tienes decuento del 15% por la compra de mas de 5 a 10 kilos");
        print("El total a pagar con el descuento es de : $totalCompra pesos.");     
       }
       else if ( kilosManza > 2 ) {
             totalCompra    = precioKilo * kilosManza;
             descuentoManza = totalCompra * 0.10;
             totalCompra    = totalCompra - descuentoManza;
             print("Tienes decuento del 10% por la compra de mas de 2 a 5 kilos");
             print("El total a pagar con el descuento es de : $totalCompra pesos.");
            }
            else {
              totalCompra    = precioKilo * kilosManza;
              print("No tienes descuento. ");
              print("El total a pagar es de : $totalCompra pesos.");
            }
}

