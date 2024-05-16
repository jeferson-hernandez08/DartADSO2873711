import 'dart:io';

void main() {
   //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO FOR 07
  /*
    7. Al cerrar un expendio de naranjas, 15 clientes recibirán un 15% de descuento si compran más de 10 
      kilos. Determinar cuánto pagará cada cliente y cuanto percibirá la tienda por esas compras.
  */

  //DECLARACION VARIABLES
  int kilos, 
      cientes = 15;
  double descuento, 
         precio_kilos      = 5000, 
         total_pagar       = 0, 
         ganancias_totales = 0;

  //ENTRADA DATOS - PROCESOS - FORMULAS - SALIDA DATOS. 
  for ( int i = 0; i <= cientes; i++) {  
    print("Ingrese la cantidad de kilos");
    kilos = int.parse(stdin.readLineSync()!);
    total_pagar = precio_kilos * kilos;
    if ( kilos > 10 ) {
      descuento = total_pagar * 0.15;
      total_pagar = total_pagar - descuento;
    }
    ganancias_totales += total_pagar;     //Acumulador
    print("El precio a pagar es de: $total_pagar");
  }
  print("La ganacia total del local es de: $ganancias_totales");
}