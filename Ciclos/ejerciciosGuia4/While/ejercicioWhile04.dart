import 'dart:io';

void main() {
     //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO WHILE 04
  /*
    4. El Depto. de Seguridad Publica y Transito del D.F. desea saber, de los n autos que entran a la ciudad 
       de México, cuantos entran con calcomanía de cada color. Conociendo el último dígito de la placa de 
       cada automóvil se puede determinar el color de la calcomanía utilizando la sig. relación:

        DÍGITO                    COLOR
        1 o 2                     amarilla
        3 o 4                     rosada
        5 o 6                     roja
        7 o 8                     verde
        9 o 0                     azul
  */

   //DECLARACION VARIABLES  
   int contador = 0;       //Variable Contador o valor inicial del while
   int autos;              //Variable para asignar la cantidad. Condicion de parada while.
   int digitoPlaca;

   //ENTRADA DATOS 
   print("Ingrese numeros de autos que entraron:");
   autos = int.parse(stdin.readLineSync()!);    

   //PROCESOS FORMULAS - ENTRADA DATOS - SALIDA DATOS.     
   while ( contador < autos) {
    print("Ingrese ultimo digito de placa de carro # ${contador+1} para saber calcomania:");
    digitoPlaca = int.parse(stdin.readLineSync()!);
    while ( digitoPlaca < 0 || digitoPlaca > 9 ) {
      print("Rango no valido, es de 0 a 9 Ingrese de nuevo el digito de carro # ${contador+1}");
      digitoPlaca = int.parse(stdin.readLineSync()!);
    }
    if ( digitoPlaca == 1 || digitoPlaca == 2 ) {
      print("El carro es de calcomania color: AMARILLA"); 
    } 
    else if ( digitoPlaca == 3 || digitoPlaca == 4 ) {
          print("El carro es de calcomania color: ROSADA"); 
         }
         else if ( digitoPlaca == 5 || digitoPlaca == 6 ) { 
               print("El carro es de calcomania color: ROJA"); 
              }
              else if ( digitoPlaca == 7 || digitoPlaca == 8 ) {
                    print("El carro es de calcomania color: VERDE"); 
                   }
                   else if ( digitoPlaca == 9 || digitoPlaca == 0 ) {
                    print("El carro es de calcomania color: AZUL"); 
                   }
   contador++;
   }
}