import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO -  EJERCICIO CONDICIONAL ANIDADO 02
  /*
    2. Dado el monto de una compra calcular el descuento considerado 
      • Descuento es 20% si el monto es mayor a 20000 pesos.
      • Descuento es 10% si el monto es mayor a 10000 pesos y menor o igual a 20000    pesos.
      • no hay descuento si el monto es menor o igual a 10000 pesos.
  */ 

  //DECLARACION VARIABLES
  double montoCompra, descuentoCompra, totalPagar;

  //ENTRADA DATOS 
  print ("Ingrese monto de la compra total:");
  montoCompra = double.parse(stdin.readLineSync()!);

  //PROCESOS - FORMULAS
  if ( montoCompra > 20000) {
    descuentoCompra = montoCompra * 0.20;
    totalPagar      = montoCompra - descuentoCompra;
    print ("Tienes descuento del 20% por la compra mayor a 20 mil pesos");
    print ("El total a pagar es de: $totalPagar");
  }
  else if ( montoCompra > 10000 ) {
        descuentoCompra = montoCompra * 0.10;
        totalPagar      = montoCompra - descuentoCompra;
        print ("Tienes descuento del 10% por la compra mayor a 10 mil pesos");
        print ("El total a pagar es de: $totalPagar");
  } 
      else {
        print ("No tienes descuento");
        print ("El total a pagar es de: $montoCompra");
      }
}