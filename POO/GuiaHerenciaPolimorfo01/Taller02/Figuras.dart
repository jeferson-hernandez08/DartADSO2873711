import 'dart:math';

abstract class Figura{
  void calcularArea();
}

class Circulo extends Figura {
  double radio;

  //Constructor clase Circulo.
  Circulo(this.radio);

  void mostrarInformacion() {
    print("El radio del circulo es: $radio");
  }

  void calcularArea(){
    print("El área del circulo es: ${radio*radio*pi}");   // A = pi * r2
  }
}

class Triangulo extends Figura {
  double base;
  double altura;

  //Constructor clase Figura.
  Triangulo(this.altura, this.base);
  
  void mostrarInformacion () {
    print("""
La base del triangulo es: $base
La altura del triangulo es : $altura""");
  }

  void calcularArea(){
    print("El área del triángulo es: ${(base*altura)/2}"); // A = b * h / 2
  }

}

class Cuadrado extends Figura{
  double lado;

  //Constructor clase Cuadrado.
  Cuadrado(this.lado);

  void mostrarInformacion() {
    print("El lado del cuadrado es: $lado");
  }

  void calcularArea(){
    print("EL área del cuadrado es: ${lado*lado}");   // A = l * l
  }
}