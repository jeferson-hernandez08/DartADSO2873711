import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO -  EJERCICIO CONDICIONAL SIMPLE 08
  /*
   8. Dada la duración en minutos de una llamada calcular el costo, considerando:
      • Hasta tres minutos el costo es 600
      • Por encima de tres minutos es 600 más 150 por cada minuto adicional a los tres primeros.
  */ 

  //DECLARACION VARIABLES
  double duracionLlamada, costoLlamada;
  double minutosAdicionales;

  //ENTRADA DATOS 
  print ("Ingrese minutos que a consumido o duracion de la llamada:");
  duracionLlamada = double.parse(stdin.readLineSync()!);
  costoLlamada = 0;

  //PROCESOS - FORMULAS
  if ( duracionLlamada <= 3 ) {
    costoLlamada = 600;
  }
  if ( duracionLlamada > 3 ) {
    minutosAdicionales = duracionLlamada - 3;
    costoLlamada = 600 + minutosAdicionales * 150;
  }
  //SALIDA DATOS
  print ("El costo total de la llamada es: $costoLlamada");
}