import 'dart:io';
import 'dart:math';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO -  EJERCICIO CONDICIONAL SIMPLE 06
  /*
    6. En un supermercado se hace una promoción, mediante la cual el cliente obtiene un descuento 
       dependiendo de un número que se escoge al azar. Si el numero escogido es menor que 74 el 
       descuento es del 15% sobre el total de la compra, si es mayor o igual a 74 el descuento es del 20%. 
       Obtener cuánto dinero se le descuenta.
  */ 

  //DECLARACION VARIABLES
  int     numeroAzar;
  double  totalCompra, descuentoCompra;

  //ENTRADA DATOS 
  // print ("Ingrese el numero azar:");   Este es para ingresarlo manalmente el usuario.
  // numeroAzar = int.parse(stdin.readLineSync()!);
  print ("Ingrese total de su compra:");
  totalCompra = double.parse(stdin.readLineSync()!);

  //PROCESOS - FORMULAS
  numeroAzar = Random().nextInt(100);
  print ("El numero al azar es: $numeroAzar");

  if ( numeroAzar < 74 ) {
    descuentoCompra = totalCompra * 0.15;
    totalCompra = totalCompra - descuentoCompra;
    print ("Su numero azar es menor a 74 su descuento es del 15%");
    print ("El total a apagar es de $totalCompra pesos");
  }
  if (numeroAzar >= 74) {
    descuentoCompra = totalCompra * 0.20;
    totalCompra = totalCompra - descuentoCompra;
    print ("Su numero azar es mayor o igual a 74 su descuento es del 20%");
    print ("El total a apagar es de $totalCompra pesos");
  }
}