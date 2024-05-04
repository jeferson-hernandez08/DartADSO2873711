import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO -  EJERCICIO CONDICIONAL DOCLES 02
  /*
   2. Un obrero necesita calcular su salario semanal, el cual se obtiene de la sig. manera:
      • Si trabaja 40 horas o menos se le paga $16 por hora
      • Si trabaja más de 40 horas se le paga $16 por cada una de las primeras 40 horas y $20 por cada hora
        extra.
  */ 

  //DECLARACION VARIABLES
  double horasTrabajadas, horaExtra, pagoHora, pagoTotal;

  //ASINACION VARIABLES
  pagoHora = 16;

  //ENTRADA DATOS 
  print("Ingrese numero de horas trabajadas");
  horasTrabajadas = double.parse(stdin.readLineSync()!);

  //PROCESOS - FORMULAS
  if ( horasTrabajadas <= 40 ) { 
    pagoTotal = horasTrabajadas * pagoHora;
    print("El salario a pagar es de 16 US por hora ");
    print("El salario a pagar por las $horasTrabajadas horas es de: $pagoTotal usd");
  }
  else {
    horaExtra = horasTrabajadas - 40; 
    pagoTotal = (horaExtra * 20) + (40 * pagoHora);
    print("El salario a pagar es de 16 US por hora");
    print("La hora extra es de 20 US");
    print("Su pago es de $pagoTotal US");
  }
}