import 'dart:io';
import 'dart:core';  //Para conseguir el dateTime

class Persona {    //Nombre de la clase

 //Atributos
 String nombre;
 String genero;
 double peso;
 double fechaNacimiento;

 //Constructor
 Persona(this.nombre, this.genero, this.peso, this.fechaNacimiento); 

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
  print("La persona ${this.nombre} tiene edad");
 }
 void mostrarInformacion() {
  print("La persona se llama ${this.nombre}, es de genero ${this.genero}, pesa ${this.peso} Kgg y su fecha de naciemiento es ${this.fechaNacimiento} ");
 }
}

void main() {
  /***********************Primara forma************************** */
  Persona persona1; 
  persona1 = Persona("Jeferson", "M", 65, 19551506);

  persona1.saludar();
  persona1.comunicarse();
  persona1.dormir();
  persona1.mostrarEdad();
  persona1.mostrarInformacion();

}