import 'dart:io';

void main() {
   //JEFERSON MAURICIO HERNANDEZ LADINO -  EJERCICIO CONDICIONAL DOBLES 06
  /*
   6. El gobierno colombiano desea reforestar un bosque que mide determinado número de hectáreas. Si la 
      superficie del terreno excede a 1 millón de metros cuadrados, entonces decidirá sembrar de la sig. manera:

      Porcentaje de la superficie del bosque   Tipo de árbol
                70%                                Pino
                20%                                Roble
                10%                                Cedro

     Si la superficie del terreno es menor o igual a un millón de metros cuadrados, entonces decidirá sembrar
     de la sig. manera:

     Porcentaje de la superficie del bosque   Tipo de árbol
                  50%                              Pino
                  30%                              Roble
                  20%                              Cedro
      
     El gobierno desea saber el numero de pinos, robles y cedros que tendrá que sembrar en el bosque, si se sabe 
     que en 10 metros cuadrados caben 8 pinos, en 15 metros cuadrados caben 15 robles y en 18 metros cuadrados 
     caben 10 cedros. También se sabe que una hectárea equivale a 10 mil metros cuadrados.
   */ 

  //DECLARACION VARIABLES
  double hectareas, hectareasPino, hectareasRoble, hertareasCedro, numeroPinos, numeroRobles, numeroCedros;
  double mt2Pino, mt2Roble, mt2Cedro;

  //ENTRADA DATOS 
  print ("Ingrese cuantas hectareas va a sembrar:");
  hectareas = double.parse(stdin.readLineSync()!);

  //PROCESOS - FORMULAS
  if (hectareas > 100) {
    hectareasPino  = hectareas * 0.70;
    hectareasRoble = hectareas * 0.20;
    hertareasCedro = hectareas * 0.10;
    mt2Pino        = hectareasPino * 10000;      //Conversion hectareas a mt2, 1 hectarea = 10000 mt2
    mt2Roble       = hectareasRoble * 10000;
    mt2Cedro       = hertareasCedro * 10000;
    numeroPinos    = mt2Pino  * 8 / 10;         //Regla de tres para saber cantidad sembrada
    numeroRobles   = mt2Roble * 15 / 15;
    numeroCedros   = mt2Cedro * 10 / 18;
    print("El numero de pinos a sembrar en el bosque de $hectareas hectareas es de $numeroPinos pinos");
    print("El numero de robles a sembrar en el bosque de $hectareas hectareas es de $numeroRobles robles");
    print("El numero de cedros a sembrar en el bosque de $hectareas hectareas es de $numeroCedros cedros");
  }
  else {
    hectareasPino  = hectareas * 0.50;
    hectareasRoble = hectareas * 0.30;
    hertareasCedro = hectareas * 0.20;
    mt2Pino        = hectareasPino * 10000;      //Conversion hectareas a mt2, 1 hectarea = 10000 mt2
    mt2Roble       = hectareasRoble * 10000;
    mt2Cedro       = hertareasCedro * 10000;
    numeroPinos    = mt2Pino  * 8 / 10;         //Regla de tres para saber cantidad sembrada
    numeroRobles   = mt2Roble * 15 / 15;
    numeroCedros   = mt2Cedro * 10 / 18;
    print("El numero de pinos a sembrar en el bosque de $hectareas hectareas es de $numeroPinos pinos");
    print("El numero de robles a sembrar en el bosque de $hectareas hectareas es de $numeroRobles robles");
    print("El numero de cedros a sembrar en el bosque de $hectareas hectareas es de $numeroCedros cedros");
  }
}