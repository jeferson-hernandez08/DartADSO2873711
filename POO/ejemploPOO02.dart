import 'dart:io';
import 'dart:core';  //Para conseguir el dateTime

class Persona {    //Nombre de la clase

 //Atributos
 String nombre;
 String genero;
 double peso;
 int edad;
 double fechaNacimiento;

 //Constructor
 Persona(this.nombre, this.genero, this.peso, this.edad, this.fechaNacimiento); 

 //Metodos
 void saludar() {
  print("La persona ${this.nombre} saluda");
 }
 void comunicarse() {
  print("La persona ${this.nombre} se comunica");
 }
 void dormir() {
  print("La persona ${this.nombre} duerme");
 }
 void mostrarEdad() {
  print("La persona ${this.nombre} tiene una edad de ${this.edad} años");
 }
 void mostrarInformacion() {
  print("La persona se llama ${this.nombre}, es de genero ${this.genero}, pesa ${this.peso} Kgg y su fecha de naciemiento es ${this.fechaNacimiento} ");
 }
}

void main() {
  /***********************Primara forma************************** */
  Persona persona1; 
  persona1 = Persona("Jeferson", "M", 65, 26, 19951506);

  persona1.saludar();
  persona1.comunicarse();
  persona1.dormir();
  persona1.mostrarEdad();
  persona1.mostrarInformacion();
  print("*" * 60);

  /***********************Segunda forma***************************/
  Persona persona2 = Persona("Sebastian", "M",73, 28, 19921108);

  persona2.saludar();
  persona2.comunicarse();
  persona2.dormir();
  persona2.mostrarEdad();
  persona2.mostrarInformacion();
  print("*" * 60);

  /***********************Tercera forma************************** */
  String nombrePersona;
  String generoPersona;
  double pesoPersona;
  int edadPersona;
  double fechaNacimientoPersona;

  print("Ingrese el nombre de la persona");
  nombrePersona = stdin.readLineSync()!;
  print("Ingrese el genero de la persona");
  generoPersona = stdin.readLineSync()!;
  print("Ingrese el peso de la persona");
  pesoPersona = double.parse(stdin.readLineSync()!);
  print("Ingrese la edad de la persona");
  edadPersona = int.parse(stdin.readLineSync()!);
  print("Ingrese la fecha de nacimiento de la persona");
  fechaNacimientoPersona = double.parse(stdin.readLineSync()!);

  Persona persona3 = Persona(nombrePersona, generoPersona, pesoPersona, edadPersona, fechaNacimientoPersona);
  persona3.saludar();
  persona3.comunicarse();
  persona3.dormir();
  persona3.mostrarEdad();
  persona3.mostrarInformacion();
  print("*" * 60);

  /***********************Cuarta forma***************************/
  String nombrePersona4 = "Arely";
  String generoPersona4 = "Femenino";
  double pesoPersona4   = 58;
  int edadPersona4      = 60;
  double fechaNaciPersona4 = 19800604;

  Persona persona4 = Persona(nombrePersona4, generoPersona4, pesoPersona4, edadPersona4, fechaNaciPersona4);
  persona4.saludar();
  persona4.comunicarse();
  persona4.dormir();
  persona4.mostrarEdad();
  persona4.mostrarInformacion();
}