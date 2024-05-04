import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO -  EJERCICIO CONDICIONAL SIMPLE 07
  /*
   7. Una compañía de seguros esta abriendo un depto. de finanzas y estableció un programa para captar 
      clientes, que consiste en lo siguiente: Si el monto por el que se efectúa la fianza es menor que $50 
      000 la cuota a pagar será por el 3% del monto, y si el monto es mayor que $50 000 la cuota a pagar 
      será el 2% del monto. La compañia desea determinar cual será la cuota que debe pagar un cliente.
  */ 

  //DECLARACION VARIABLES
  double montoFianza, cuotaPagar;

  //ENTRADA DATOS 
  print ("Ingrese monto de fianza:");
  montoFianza = double.parse(stdin.readLineSync()!);

  //PROCESOS FORMULAS
  if ( montoFianza < 50000 ) {
    cuotaPagar = montoFianza * 0.03;
    print ("La couta que debe pagar el cliente por la fianza de $montoFianza es de $cuotaPagar");
    print ("La cuota a pagar es del 3%");
  }
  else {
    cuotaPagar = montoFianza * 0.02;
    print ("La couta que debe pagar el cliente por la fianza de $montoFianza es de $cuotaPagar");
    print ("La cuota a pagar es del 2% ");
  }
}