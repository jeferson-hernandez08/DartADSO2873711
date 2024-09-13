import 'dart:io';
import 'Futbolista.dart';
import 'Persona.dart';


void main() {
  //Creamos los objetos. 
  //********************************************** */
  //Creamos un objeto instancias de la clase persona. 
  String nombre; 
  int edad; 

  print("Ingrese el nombre de la persona:");
  nombre = stdin.readLineSync()!;
  print("Ingrese la edad de la persona:");
  edad = int.parse(stdin.readLineSync()!);
  Persona persona1 = Persona(nombre, edad); 
  persona1.mostrarInfoPersona();

  //************************************************ */
  //Creamos un objeto instancias de la clase Futbolista. 
  
  
}