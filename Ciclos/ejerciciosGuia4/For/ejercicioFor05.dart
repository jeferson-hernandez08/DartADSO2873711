import 'dart:io';

void main() {
   //JEFERSON MAURICIO HERNANDEZ LADINO - EJERCICIO FOR 05
  /*
    5. Calcular e imprimir la tabla de multiplicar de un número cualquiera. Imprimir el multiplicando, el 
       multiplicador y el producto.
  */

  //DECLARACION VARIABLES
  int cantNumeros = 10;
  int num;
  int producto;

  //ENTRADA DATOS
  print("Ingrese numero para mostrar tabla de multiplicar");
  num = int.parse(stdin.readLineSync()!);

  //PROCESOS - FORMULAS - SALIDA DATOS. 
  for ( int i = 0; i <= cantNumeros; i++) {
    producto = num * i;
    print ("$num x $i = $producto");
  }
}