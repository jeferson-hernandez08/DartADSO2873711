import 'dart:io';

void main() {
    //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO LISTA/ARREGLO 07.
  /*
    7. Diseñar un algoritmo que lea una palabra o una frase en un arreglo de caracteres y determinar si esa
       palabra o frase es palíndroma.
  */

  //DECLARACION VARIABLES LISTAS  
  String? palabra;
  List<String> vectPalindrome = [];
  List<String> vectPalabra = [];

  //ENTRADA DATOS
  print("Ingrese la palabra para comprobar Palindrome");
  palabra = stdin.readLineSync()!.toUpperCase();       //toUpperCase para que todas la palabras que ingrese sea en mayuscula.

  //PROCESOS FORMULAS - SALIDA DATOS.  
  //Se recorre cada letra de la palabra y se envia la vectorPalabra
  for (var i = 0; i < palabra.length; i++) {
    vectPalabra.add(palabra[i]);
    vectPalindrome.add(palabra[palabra.length -i -1]);
  }
  print(vectPalabra);
  print(vectPalindrome);
  if (vectPalabra.toString() == vectPalindrome.toString()) {    //Metodo toString convierte el arreglo en texto.
    print("Es palidrome");
  }
  else {
    print("NO es palidrome");
  }
}