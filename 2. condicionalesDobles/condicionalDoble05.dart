import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO -  EJERCICIO CONDICIONAL DOBLES 05
  /*
   5. Un cliente ordena cierta cantidad de brochas de cerda y rodillos; las brochas de cerda tienen un 20% de 
    descuento y los rodillos un 15% de descuento. Los datos que se tienen por cada tipo de artículo son: la 
    cantidad pedida y el precio unitario. Además, si se paga de contado todo tiene un descuento del 7%.
    Elaborar un programa que calcule y muestre en pantalla el costo total de la orden, tanto para el pago de 
    contado como para el caso de pago de crédito. Para el caso de pago de contado el usuario ingresa 1, 
    para pago a crédito el usuario ingresa 2.
   */ 

  //DECLARACION VARIABLES
  double cantidadBrochas, cantidadRodillos, precioBrochas, precioRodillos, claveMetodoPago;
  double totalPagoBrochas, totalPagoRodillos, descuentoBrochas, descuentoRodillos;
  double totalPagoArticulos, descuentoTotalArticulos;

  //ENTRADA DATOS 
  print("Ingrese cantidad de brochas a comprar:");
  cantidadBrochas = double.parse(stdin.readLineSync()!);
  print("Ingrese precio unitario de cada brocha:");
  precioBrochas = double.parse(stdin.readLineSync()!);
  print("Ingrese cantidad de rodillos a comprar:");
  cantidadRodillos = double.parse(stdin.readLineSync()!);
  print("Ingrese precio unitario de cada rodillo:");
  precioRodillos = double.parse(stdin.readLineSync()!);
  print("Ingrese metodo de pago que desea cancelar, 1 contando y 2 credito:");
  claveMetodoPago = double.parse(stdin.readLineSync()!);

  //PROCESOS - FORMULAS
    //Compra Brochas
    totalPagoBrochas = cantidadBrochas * precioBrochas;
    descuentoBrochas = totalPagoBrochas * 0.20;
    totalPagoBrochas = totalPagoBrochas - descuentoBrochas;
    //Compra Rodillos
    totalPagoRodillos = cantidadRodillos * precioRodillos;
    descuentoRodillos = totalPagoRodillos * 0.15; 
    totalPagoRodillos = totalPagoRodillos - descuentoRodillos;
  if (claveMetodoPago == 1) {
    //Total pago de todo
    totalPagoArticulos = totalPagoBrochas + totalPagoRodillos;
    descuentoTotalArticulos = totalPagoArticulos * 0.07;
    totalPagoArticulos = totalPagoArticulos - descuentoTotalArticulos;
    //Total pago de todo
    print ("Tienes descuento del 7% por el pago de contado.");
    print ("El total a pagar de contado es de: $totalPagoArticulos pesos");
  }
  else {
    //Total pago de todo
    totalPagoArticulos = totalPagoBrochas + totalPagoRodillos;
    print ("El total a pagar a credito es de: $totalPagoArticulos pesos");
  }
}