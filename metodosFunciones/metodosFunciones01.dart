import 'dart:io';

void main () {

  // int a, b, c;
  // a = 5;
  // b = 3;
  // c = a + b;
  // print("La suma es $c");
  // a = 8;
  // b = 2;
  // c = a + b;
  // print("La suma es $c");
  //*****************************/
  sumar();                 //Ejercicio #1
  sumarEficiente(4, 3);    //Ejercicio #2
  sumarEficiente(8, 10);
  sumarEficiente(7, 2);
  saludar("posada", "M");  //Ejercicio #3
  saludar("maria", "F");
  List<String> frutas = ["Mango", "Pera", "Uva"];  //Ejercicio #4
  List<String> nombres = ["Juan", "Ana", "Eva"];
  mostrarLista(frutas, "Fruta");
  print("*" * 30);
  mostrarLista(nombres, "Nombre");
  double multi = multiplicacion(3, 5);     //Ejercicio #5
  print("La multiplicacion es: $multi");
}

void sumar() {   //Ejercicio #1
  int a, b, c;
  a = 5;
  b = 3;
  c = a + b;
  print("La suma es $c");
}

void sumarEficiente(int num1, int num2) {  //Ejercicio #2
  int suma;
  suma = num1 + num2;
  print("La suma es $suma");
}

void saludar(String nombre, String genero) {      //Ejercicio #3
  if (genero == "M") {
    print("Hola querido $nombre");
  }
  else {
    print("Hola querida $nombre");
  }
}

void mostrarLista(List<String> lista, String nombre) {      //Ejercicio #4
  for (var i = 0; i < lista.length; i++) {
    print("$nombre #${i+1} ${lista[i]}");  
  }
}

double multiplicacion(double num1, double num2) {    //Ejercicio #5
  double multiplicacion = num1 * num2;
  return multiplicacion;
}
