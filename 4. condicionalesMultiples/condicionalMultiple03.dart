import 'dart:io';
import 'dart:math';

void main() {
  //JEFERSON MAURICIO HERNANDEZ LADINO -  EJERCICIO CONDICIONAL MULTIPLE 03
  /*
   3. Dados como datos dos variables de tipo entero, obtenga el resultado de la siguiente función:

      Val        Num
      100 * v    1
      100^v      2
      100/v      3
      0          Cualquier número

  */ 

  //DECLARACION VARIABLES
  int    numClave;
  double resultado, numVariable ;
  num exponente;
  
  

  //ENTRADA DATOS
  print("Ingrese clave para elegir formula:");
  numClave = int.parse(stdin.readLineSync()!);  
  print("Ingrese numero entero para variable v:");
  numVariable = double.parse(stdin.readLineSync()!); 

  //PROCESO - FORMULAS
  switch ( numClave ) {
    case 1:
      resultado = 100 * numVariable;
      print("La formula de este caso $numClave es 100 * v");
      print("El total con este caso es $resultado");
    break;
    case 2:
      exponente = pow(100, numVariable );
      print("La formula de este caso $numClave es 100^v");
      print("El total con este caso es $exponente");
    break;
    case 3:
      resultado = 100 / numVariable;
      print("La formula de este caso $numClave es 100/v");
      print("El total con este caso es $resultado");
    break;
    default: 
      resultado = 0;
      print("En este caso numero diferente es $resultado");
    break;
  }
}

//Funcion exponente
  // power= pow(10, 3);
  // print("Numero $power");