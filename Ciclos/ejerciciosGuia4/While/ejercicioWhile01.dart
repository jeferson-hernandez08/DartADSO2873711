import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO WHILE 01
  /*
    1. Una compañía de seguros tiene contratados a n vendedores. Cada uno hace tres ventas a la semana. 
    Su política de pagos es que un vendedor recibe un sueldo base, y un 10% extra por comisiones de sus 
    ventas. El  gerente  de  su  compañía  desea  saber  cuanto  dineroobtendrá  en  la  semana 
    cada vendedor por concepto de comisiones por las tres ventas realizadas, y cuanto tomando
    en cuenta su sueldo base y sus comisiones.
  */

  //DECLARACION VARIABLES
  int cantVendedores, contador = 0;
  double sueldoBase, comisiones =0, porcentajeComision = 0, sueldoTotal, precioVenta;

  //ENTRADA DATOS.
  print ("Ingrese numero de vendedores"); 
  cantVendedores = int.parse(stdin.readLineSync()!);

  //PROCESO - FORMULAS - SALIDA
  while ( contador < cantVendedores ) {              //Hacemos el while para la cantidad de vendedores 
      print ("Ingrese su sueldo base"); 
      sueldoBase = double.parse(stdin.readLineSync()!);
      contador ++;

      for (int i = 0; i < cantVendedores; i++) {     //Hacemos el for para la cantidad de ventas
        print ("Digite el valor de su venta " +(i+1).toString());
        precioVenta = double.parse(stdin.readLineSync()!);
        porcentajeComision = precioVenta * 0.10;
      }

      comisiones= porcentajeComision * 3;
      sueldoTotal = sueldoBase + comisiones; 
      print("Su sueldo base es de: $sueldoBase");
      print("Y su sueldo mas comisiones es: $sueldoTotal");
  }




}