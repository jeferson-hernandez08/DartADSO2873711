import 'dart:io';

void main() {
   //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO FOR 06
  /*
    6.  Una persona debe realizar un muestreo con 50 personas para determinar el promedio de peso de los 
        niños, jóvenes, adultos y adultos mayores que existen en su zona habitacional. Se determinan las 
        categorías con base en la sig, tabla:

        CATEGORIA           EDAD
        Niños              0 – 12
        Jóvenes            13 - 29
        Adultos            30 - 59
        Adultos Mayores    60 en adelante

        Se debe solicitar la edad y el peso de cada persona y calcular y mostrar el promedio por categoría.
  */

  //DECLARACION VARIABLES
  double promPesoNino, 
         promPesoJoven, 
         promPesoAdulto, 
         promPesoAdultoMayor;
  double sumaPesoNino = 0,     //Variables acumulador
         sumaPesoJoven = 0, 
         sumaPesoAdulto = 0, 
         sumaPesoAdultoMayor = 0;   
  int edad, cantPersonas = 5;
  double peso;
  int contNino = 0, contJoven = 0, contAdultos = 0, contAdultoMayor = 0;  //Variables contador
    
  //ENTRADA DATOS - PROCESOS - FORMULAS - SALIDA DATOS. 
  for ( int i = 0; i <= cantPersonas; i++) {
    print("Ingrese la edad");
    edad = int.parse(stdin.readLineSync()!);
    print("Ingrese el peso");
    peso = double.parse(stdin.readLineSync()!);
    if ( edad > 0 && edad < 12 ) {  //Ninos
      //sumaPesoNino = sumaPesoNino + peso;
      sumaPesoNino += peso;   //Acumulador 
      contNino++;             //Contador
    }
    else if ( edad <= 29 ) {   //Joven
           sumaPesoJoven += peso;   //Acumulador 
           contJoven++;             //Contador
         }
         else if ( edad <= 59 ) {   //Adulto
                sumaPesoAdulto += peso;   //Acumulador 
                contAdultos++;             //Contador
              }
              else {                          //Adulto Mayor
                sumaPesoAdultoMayor += peso;   //Acumulador 
                contAdultoMayor++;                 //Contador
              }
  }
  promPesoNino =sumaPesoNino / contNino;
  promPesoJoven = sumaPesoJoven / contJoven;
  promPesoAdulto =sumaPesoAdulto / contAdultos;
  promPesoAdultoMayor =sumaPesoAdultoMayor / contAdultoMayor;
  print("El promedio de pesos de niños es: $promPesoNino");
  print("El promedio de pesos de jovenes es: $promPesoJoven");
  print("El promedio de pesos de adultos es: $promPesoAdulto");
  print("El promedio de pesos de adulto mator es: $promPesoAdultoMayor");
}