import 'dart:io';

class Perro {  //Nombre de la clase

  // Atributos
  String nombre;
  String raza;
  double peso;

  // Constructor: Funcion que se ejecuta cuando se crea un objeto
  Perro(this.nombre, this.raza, this.peso);

  // Perro(String nom, String raz, double peso) {  Manera de entender el constructor.
  //   this.nombre = nom;
  //   this.raz = raz;
  //   this.peso = peso;
  // }

  //Metodos
  void correr() {
    print("El perro ${this.nombre} corre");
  }
  void ladrar() {
    print("El perro ${this.nombre} ladra");
  }
  void dormir() {
    print("El perro ${this.nombre} duerme");
  }
  void mostrarInformacion() {
    print("El perro se llama ${this.nombre}, es de raza ${this.raza} y pesa ${this.peso} Kg");
  }
} //Fin clase

void main() {

  //Creamos el objeto de la clase perro 
  int perro;        //variable tipo entero 
  bool perross = true;    //variable tipo booleano    //Aqui declaramos y luego asignamos
  String perros;    //variable tipo cadena   // Declaramos 
  perros = "Firulais";     //Ejemplo de lo que hacemos con la variable construccion por que internamente le damos los valores.  // Luego asigmos

  /*************************************************/   //PRIMER FORMA
  Perro perro1;    //variable tipo perro (clase)  //Creamos la variable de dato clase, perro1 es el objeto osea que declaramos el objeto  //declaro 
  perro1 = Perro("Firu", "Pitbull", 30.5);   //Llamamos el metodo constructor   // Y luego asigno
  //var perro1 = Perro("Firu", "Pitbull", 30.5); //Otra manera de definirlo, pero la mas valida es esta ultima. 
  perro1.correr();
  perro1.ladrar();
  perro1.dormir();
  perro1.mostrarInformacion();

  /*************************************************/   //SEGUNDA FORMA
  print("*" * 60);
  Perro perro2 = Perro("Mac", "Pincher", 4);     //Declaramos otro objeto  //
  perro2.correr();
  perro2.ladrar();
  perro2.dormir();
  perro2.mostrarInformacion();

  /*************************************************/   //TERCERA FORMA
  print("*" * 60);
  String nombrePerro;
  String razaPerro;
  double pesoPerro;

  print("Ingrese el nombre del perro:");
  nombrePerro = stdin.readLineSync()!;
  print("Ingrese la raza del perro:");
  razaPerro = stdin.readLineSync()!;
  print("Ingrese el peso del perro");
  pesoPerro = double.parse(stdin.readLineSync()!);
  Perro perro3 = Perro(nombrePerro, razaPerro, pesoPerro);
  perro3.correr();
  perro3.ladrar();
  perro3.dormir();
  perro3.mostrarInformacion();

  /*************************************************/   //CUARTA FORMA FORMA
  print("*" * 60);
  String nombrePerro4 = "Paco";
  String razaPerro4 = "Chihuahua";
  double pesoPerro4 = 2;

  Perro perro4 = Perro(nombrePerro4, razaPerro4, pesoPerro4);
  perro4.correr();
  perro4.ladrar();
  perro4.dormir();
  perro4.mostrarInformacion();

}