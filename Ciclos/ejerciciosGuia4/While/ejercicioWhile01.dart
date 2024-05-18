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
  int cantVendedores, cantVentas = 3, contador = 0;
  double sueldoBase, comisiones =0, porcentajeComision = 0, sueldoTotal, precioVenta;

  //ENTRADA DATOS.
  print ("Ingrese la cantidad de vendedores:"); 
  cantVendedores = int.parse(stdin.readLineSync()!);
  print ("Ingrese su sueldo base"); 
  sueldoBase = double.parse(stdin.readLineSync()!);

  //ENTRADA DATOS - PROCESO FORMULAS - SALIDA DATOS.
  while ( contador < cantVendedores ) {            //Hacemos el while para la cantidad de vendedores 
    for (int i = 0; i < cantVentas; i++) {        //Hacemos el for para la cantidad de ventas
      print ("Digite el valor de su venta ${i+1} del vendedor ${contador+1}");
      precioVenta = double.parse(stdin.readLineSync()!);
      while ( precioVenta < 0 || precioVenta > 10000000 ) {
        print ("La venta esta fuera de rango, Ingrese de nuevo");
        precioVenta = double.parse(stdin.readLineSync()!);
      }
      porcentajeComision = precioVenta * 0.10;    //Comision por cada venta
    }
    comisiones= porcentajeComision * 3;           //Total comision por la tres ventas
    sueldoTotal = sueldoBase + comisiones; 
    print("Su sueldo base es de: $sueldoBase");
    print("Y su sueldo mas comisiones es: $sueldoTotal");
    contador ++;
  }
}