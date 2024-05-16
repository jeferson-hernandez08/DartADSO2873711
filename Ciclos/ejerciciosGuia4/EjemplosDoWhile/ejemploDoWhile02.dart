import 'dart:io';

void main() {
   //JEFERSON MAURICIO HERNANDEZ LADINO - EJEMPLO DO WHILE 02.
  /*
    2. Calculadora
  */

  //DECLARACION VARIABLES
  int opcion;
  double resultado, num1 = 0, num2 = 0;

  //ENTRADA DATOS - PROCESO FORMULA - SALIDA DATOS
  do {
    print ("***********************************");
    print ("Bienvenido a la calculadora");
    print ("1. Suma");
    print ("2. Resta");
    print ("3. Multiplicacion");
    print ("4. Division");
    print ("5. Salir");
    print ("***********************************");
    print ("Digite la opcion deseada");
    opcion = int.parse(stdin.readLineSync()!);
    if ( opcion >= 1 && opcion < 5) {
      print("Ingrese los 2 numeros para operar");
      num1 = double.parse(stdin.readLineSync()!);
      num2 = double.parse(stdin.readLineSync()!);
    }
    switch (opcion) {
      case 1:
        resultado = num1 + num2;
        print("La suma de los numeros es: $resultado");
        break;
      case 2:
        resultado = num1 - num2;
        print("La resta de los numeros es: $resultado");
        break;
      case 3:
        resultado = num1 * num2;
        print("La multiplicacion de los numeros es: $resultado");
      case 4:
        resultado = num1 / num2;
        print("La division de los numeros es: $resultado");
        break;
      case 5:
        print("En la buena!");
        break;
      default:
        print("Opcion incorrecta");
    }
  }
  while ( opcion != 5  );
}