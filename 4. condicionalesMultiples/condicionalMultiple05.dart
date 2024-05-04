import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO -  EJERCICIO CONDICIONAL MULTIPLE 05
  /*
   5. El costo de las llamadas internacionales depende de la zona geográfica en la que se encuentre el 
      país destino, y del número de minutos hablados.
      En la siguiente tabla se presenta el costo por minuto por zona. A cada uno se le ha asociado una 
      clave.
  
      Clave        Zona              Precio
      12      América del Norte      200
      15      América Central        220
      18      América del Sur        450
      19      Europa                 350
      23      Asia                   600
      25      África                 600
      29      Oceanía                500

      Construya la solución para calcular e imprimir el costo de una llamada dada la clave.
  */ 

  //DECLARACION VARIABLES
  double minutosConsumidos, costoLlamada, claveZonaDest;   

  //ENTRADA DATOS
  print("Ingrese numero de minutos consumidos:");
  minutosConsumidos = double.parse(stdin.readLineSync()!);  
  print("Ingrese clave de zona destino marcado:");
  claveZonaDest = double.parse(stdin.readLineSync()!); 

  //PROCESO - FORMULAS - SALIDA
  switch (claveZonaDest) {
    case 12:
      costoLlamada = minutosConsumidos * 200;
      print("El costo por minuto de este destino America del norte es de 200 pesos");
      print("El total a pagar por los $minutosConsumidos minutos es de $costoLlamada pesos");
    break;
    case 15:
      costoLlamada = minutosConsumidos * 220;
      print("El costo por minuto de este destino America del central es de 220 pesos");
      print("El total a pagar por los $minutosConsumidos minutos es de $costoLlamada pesos");
    break;
    case 18:
      costoLlamada = minutosConsumidos * 450;
      print("El costo por minuto de este destino America del sur es de 450 pesos");
      print("El total a pagar por los $minutosConsumidos minutos es de $costoLlamada pesos");
    break;
    case 19:
      costoLlamada = minutosConsumidos * 350;
      print("El costo por minuto de este destino Europa es de 350 pesos");
      print("El total a pagar por los $minutosConsumidos minutos es de $costoLlamada pesos");
    break;
    case 23:
      costoLlamada = minutosConsumidos * 600;
      print("El costo por minuto de este destino Asia es de 600 pesos");
      print("El total a pagar por los $minutosConsumidos minutos es de $costoLlamada pesos");
    break;
    case 25:
      costoLlamada = minutosConsumidos * 600;
      print("El costo por minuto de este destino Africa es de 600 pesos");
      print("El total a pagar por los $minutosConsumidos minutos es de $costoLlamada pesos");
    break;
    case 29:
      costoLlamada = minutosConsumidos * 500;
      print("El costo por minuto de este destino Oceania es de 500 pesos");
      print("El total a pagar por los $minutosConsumidos minutos es de $costoLlamada pesos");
    break;
    default:
      print("La categoria es incorecta.");
    break;
  }
}