import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO -  EJERCICIO CONDICIONAL SIMPLE 03
  /*
    3. El jefe de un almacén de ropa, pone una promoción en sus trajes por un período de tres días para 
    sus clientes, de tal manera que si un cliente ordena un traje se captura el modelo del traje y el precio 
    unitario. Si el cliente ordena tres o más trajes se le hace un descuento del 17%, si no se le cobra al 
    precio normal.
  */

  //DEFINICION VARIABLES
  String? nombreTraje;
  double  precioUnitario, descuento, totalPagar;
  int     cantidadTrajes;

  //ENTRADA DATOS
  print("Ingrese Modelo de traje:");
  nombreTraje = stdin.readLineSync();
  print("Ingrese precio unitario de traje:");
  precioUnitario = double.parse(stdin.readLineSync()!);
  print("Ingrese cantidad de trajes a comprar:");
  cantidadTrajes = int.parse(stdin.readLineSync()!);

  //PROCESO - FORMULAS
  totalPagar = precioUnitario * cantidadTrajes;
  if (cantidadTrajes >= 3) {
    descuento = totalPagar * 0.17;
    totalPagar = totalPagar - descuento;
    print ("Tiene un decuento del 17% por la compra de 3 o mas trajes:");
    print ("Su descuento es de $descuento pesos por la compra de los $nombreTraje.");
  }

  //SALIDA DATOS
  print ("El total a pagar es de $totalPagar"" pesos por los $nombreTraje.");
}