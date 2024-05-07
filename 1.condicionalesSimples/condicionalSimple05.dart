import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO -  EJERCICIO CONDICIONAL SIMPLE 05
  /*
    5.  Calcular el total que una persona debe pagar en un almacén, si el precio de cada llanta es de $80000 
        si se compran menos de 5 llantas y de $70000 si se compran 5 o más.
  */

  //DECLARACION VARIABLES
  double TotalPagar, precioLlantas, descuentoLlantas, descuento;
  int    cantidadLlantas;

  //ASIGNACION VARIABLES
  precioLlantas = 80000;
  descuentoLlantas = 10000;

  //ENTRADA DATOS 
  print ("BIENVENIDO:"); 
  print ("El costo de cada llanta es de $precioLlantas pesos");
  print ("Ingrese la cantidad a comprar:");
  cantidadLlantas = int.parse(stdin.readLineSync()!);

  //PROCESO - FORMULAS
  TotalPagar = precioLlantas * cantidadLlantas;
  if ( cantidadLlantas >= 5) {
    descuento = precioLlantas - descuentoLlantas;
    TotalPagar = descuento * cantidadLlantas; 
    print ("Aplicas para el descuento de $descuentoLlantas pesos por cada llanta, por la compra de 5 o mas Llantas");
    
  }
  //SALIDA DATOS
    print("El total a pagar es de : $TotalPagar pesos");
}