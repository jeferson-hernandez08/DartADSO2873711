import 'dart:io';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO -  EJERCICIO CONDICIONAL ANIDADO 09
  /*
    9. El fondo de administración de pensiones requiere clasificar a las personas que se jubilaran en el año
      2009. Existen tres tipos de jubilaciones: por edad, por antigüedad joven y por antigüedad adulta. 
      
      Las personas adscritas a la jubilación por edad deben tener 60 años o mas y una antigüedad en su empleo
      de menos de 25 años.

      Las personas adscritas a la jubilación por antigüedad joven deben tener menos de 60 años y una
      antigüedad en su empleo de 25 años o más.

      Las personas adscritas a la jubilación por antigüedad adulta deben tener 60 años o mas y una 
      antigüedad en su empleo de 25 años o mas.
      
      Determinar en que tipo de jubilación, quedara adscrita una persona. 
  */   

   //DECLARACION VARIABLES
   double jubilacionEdad, antiguedadEmpleo;
   String? nombrePersona;
   
   //ENTRADA DATOS
   print("Ingrese nombre de la persona a jubilar:");
   nombrePersona = stdin.readLineSync();
   print ("Ingrese edad para determinar tipo de jubilacion:");
   jubilacionEdad = double.parse(stdin.readLineSync()!);
   print ("Ingrese años antiguedad de su empleo:");
   antiguedadEmpleo = double.parse(stdin.readLineSync()!);
 
   //PROCESO - FORMULAS - SALIDA
   if ( jubilacionEdad >= 60 && antiguedadEmpleo < 25 ) {
    print("Su nombre es: $nombrePersona."); 
    print("Su tipo de jubilacion es: Jubilacion por edad"); 
   } else if ( jubilacionEdad < 60 && antiguedadEmpleo >= 25 ) {
          print("Su nombre es: $nombrePersona."); 
          print("Su tipo de jubilacion es: Jubilacion por antiguedad joven"); 
          } else if ( jubilacionEdad >= 60 && antiguedadEmpleo >= 25 ) {
                  print("Su nombre es: $nombrePersona."); 
                  print("Su tipo de jubilacion es: Jubilacion por antiguedad adulta"); 
                  }
                  else {
                    print("Valores erroneos, No cumple requisitos.");
                  }
}