import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO -  EJERCICIO CONDICIONAL MULTIPLE 01
  /*
    1. La empresa comercializadora Solva vende escobas, recogedores y aromatizantes, clasifica a sus clientes 
       de acuerdo a la frecuencia de compras con las condiciones siguientes:

          - Si el cliente es de la categoría 1 se le descuenta el 5% 
          - Si el cliente es de la categoría 2 se le descuenta el 8% 
          - Si el cliente de de la categoría 3 se le descuenta el 12% 
          - Si el cliente es de la categoría 4 se le descuenta el 15% 

       Cuando el cliente realiza una compra se generan los siguientes datos: 

        Nombre del cliente 
        Tipo de cliente
        Cantidad comprada de escobas, recogedores y aromatizantes. 

       Los precios de estos elementos son. 
        • Escobas. 3000. 
        • Recogedores. 2000 
        • Aromatizantes. 1000 

        Desarrollar un programa en que lea estos datos y calcule y muestre en pantalla: 
          Nombre del cliente 
          Subtotal a pagar 
          Descuento 
          Total a pagar.         
  */ 

  //DECLARACION VARIABLES
  String? nombreCliente;
  int tipoCliente;
  int cantEscobas, cantRecogedores, cantAromat;
  int precioEscoba = 3000, precioRecogedor = 1000, precioAromat = 1000;
  double descuento, totalCompra , subtotal;

  //ENTRADA DATOS
  print("Cual es su nombre:");
  nombreCliente = stdin.readLineSync(); 
  print("Cual es su categoria:");
  tipoCliente = int.parse(stdin.readLineSync()!); 
  print("Cual la cantidad de escobas, recogedores y aromatizantes");
  cantEscobas = int.parse(stdin.readLineSync()!); 
  cantRecogedores = int.parse(stdin.readLineSync()!); 
  cantAromat = int.parse(stdin.readLineSync()!); 

  //PROCESO - FORMULAS
  subtotal = (cantEscobas.toDouble() * precioEscoba) + (cantRecogedores * precioRecogedor  ) + ( cantAromat * precioAromat);

  switch (tipoCliente) {
    case 1: 
      descuento = subtotal * 0.05;
      break;
    case 2: 
      descuento = subtotal * 0.08;
      break;
    case 3: 
      descuento = subtotal * 0.12;
      break;
    case 4: 
      descuento = subtotal * 0.15;
      break;
    default:
      print("La categoria es incorecta.");
      descuento = 0;    //Esto es para no tener error 
      break;
  } 
  totalCompra = subtotal - descuento;
   //SALIDA DATOS
    print("Su nombre es: $nombreCliente");
    print("subtotal a pagar: $subtotal");
    print("El decuento es: $descuento");
    print("El total a pagar es: $totalCompra");
}