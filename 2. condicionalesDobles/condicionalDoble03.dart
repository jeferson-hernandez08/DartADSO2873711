import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO -  EJERCICIO CONDICIONAL DOBLES 03
  /*
   3. Hacer un algoritmo que calcule el total a pagar por la compra de camisas. Si se compran tres camisas o mas se
      aplica un descuento del 20% sobre el total de la compra y si son menos de tres camisas un descuento del 10%
   */ 

  //DECLARACION VARIABLES
  double precioCamisa, totalPagar, cantidadCamisas, descuento;

  //ENTRADA DATOS 
  print ("Ingrese precio de camisa:");
  precioCamisa = double.parse(stdin.readLineSync()!);
  print ("Ingrese cantidad de camisas a comprar:");
  cantidadCamisas = double.parse(stdin.readLineSync()!);

  //PROCESOS - FORMULAS
    totalPagar = precioCamisa * cantidadCamisas;
  if ( cantidadCamisas >= 3 ) {
    descuento  = totalPagar * 0.20;
    totalPagar = totalPagar - descuento;
    print ("Tiene descuento del 20% por la compra de 3 o mas camisas.");
    print ("Su descuento es de $descuento.");
    print ("El total a pagar a por las camisas es de: $totalPagar");
  }
  else {
    descuento  = totalPagar * 0.10;
    totalPagar = totalPagar - descuento;
    print ("Tiene descuento del 10% por la compra de menos de 3 camisas.");
    print ("Su descuento es de $descuento.");
    print ("El total a pagar a por las camisas es de: $totalPagar");
  }

  








}