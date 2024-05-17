import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO -  EJERCICIO CONDICIONAL DOBLES 04
  /*
   4. Una empresa de bienes raíces ofrece casas de interés social, bajo las siguientes condiciones: Si los ingresos del
      comprador son mayores o iguales a $800000 la cuota inicial será del 15% del costo de la casa y el resto se
      distribuirá en pagos mensuales, a pagar en diez años. Si los ingresos del comprador son inferiores a de $800000
      la cuota inicial será del 30% del costo de la casa y el resto se distribuirá en pagos mensuales a pagar en 7 años.
      La empresa quiere saber cuanto debe pagar un comprador por concepto de cuota inicial y cuanto por cada
      pago mensual ingresando el valor de la casa.
   */ 

  //DECLARACION VARIABLES
  double valorCasa, ingresoComprador, cuotaInicial, restanteValorCasa;
  double pagoMensual10, pagoMensual07, pagoMensual;
  
  //ENTRADA DATOS 
  print("Ingrese valor de la casa en venta:");
  valorCasa = double.parse(stdin.readLineSync()!);
  print("Ingrese ingreso mensual de comprador:");
  ingresoComprador = double.parse(stdin.readLineSync()!);

  //PROCESOS - FORMULAS
  if (ingresoComprador >= 800000) {
    cuotaInicial = valorCasa * 0.15;
    restanteValorCasa = valorCasa - cuotaInicial;
    pagoMensual = restanteValorCasa / 120;   //120 meses es igual a 10 años
    print("La cuota inicial a pagar es de: $cuotaInicial pesos.");
    print("El restante a pagar es de $restanteValorCasa pesos,");
    print("para pagar a diez años la cuota mensual es de $pagoMensual pesos");
  }
  else {
    cuotaInicial = valorCasa * 0.30;
    restanteValorCasa = valorCasa - cuotaInicial;
    pagoMensual = restanteValorCasa / 84;   //84 meses es igual a 7 años
    print("La cuota inicial a pagar es de: $cuotaInicial pesos.");
    print("El restante a pagar es de $restanteValorCasa pesos,");
    print("para pagar a siete años la cuota mensual es de $pagoMensual pesos");
  }
}