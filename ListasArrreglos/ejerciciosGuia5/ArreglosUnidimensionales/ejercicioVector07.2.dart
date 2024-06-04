import 'dart:io';

void main () {
   //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO LISTA/ARREGLO 07.
  /*
    7. Diseñar un algoritmo que lea una palabra o una frase en un arreglo de caracteres y determinar si esa
       palabra o frase es palíndroma.
  */

  //DECLARACION VARIABLES LISTAS     //Sugunda forma de hacerlo
  String? palabra = 'OSO';
  List<String> vectPalindrome = [];
  List<String> vectPalabra = [];

  //PROCESOS FORMULAS - ENTRADA DATOS - SALIDA DATOS.  
  //Se recorre cada letra de la palabra y se envia la vectorPalabra
  for (var i = 0; i < palabra.length; i++) {
    vectPalabra.add(palabra[i]);
  }
  //Se invierten los elementos de la lista
  vectPalindrome = vectPalabra.reversed.toList();
  print(vectPalabra);
  print(vectPalindrome);
  if (vectPalabra.toString() == vectPalindrome.toString()) {    //Metodo toString convierte el arreglo en texto.
    print("Es palidrome");
  }
  else {
    print("NO es palidrome");
  }
}