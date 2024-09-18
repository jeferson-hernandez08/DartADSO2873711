import 'Figuras.dart';

void main() {

  //*****Intancias Objetos De Figuras Geometricas*****/
  Circulo newCirculo = Circulo(8);
  Triangulo newTriangulo = Triangulo(15, 7);
  Cuadrado newCuadrado = Cuadrado(6.2);

  //Mostrar información de figuras geometricas
  print("____________________________________________");
  print("Circulo:");
  newCirculo.mostrarInformacion();
  print("Triangulo:");
  newTriangulo.mostrarInformacion();
  print("Cuadrado:");
  newCuadrado.mostrarInformacion();

  //Mostrar el area de cada figura.
  print("____________________________________________");
  print("Areas de cada figura:");
  newCirculo.calcularArea();
  newTriangulo.calcularArea();
  newCuadrado.calcularArea();
}