import 'dart:io';
import 'Futbolista.dart';
import 'Persona.dart';
import 'Programador.dart';


void main() {
  //Creamos los objetos. 
  //*************************************************************************************/
  //Punto c. Creamos un objeto instancias de la clase persona ingresados por el usuario. 
  String nombreUsu; 
  int edadUsu; 

  print("Vamos a crear una persona.");
  print("Ingrese el nombre de la persona:");
  nombreUsu = stdin.readLineSync()!;
  print("Ingrese la edad de la persona:");
  edadUsu = int.parse(stdin.readLineSync()!);
  print("-------------------------------------------------------------------------------");

  Persona persona1 = Persona(nombreUsu, edadUsu); 

   print("!Excelente¡, La persona se han creado satisfactoriamente");
  print("Persona:");
  persona1.mostrarInfoPersona();

  //**********************************************************************************/
  //Creamos dos objetos instancias de la clase Futbolista ingresados por el usuario. 
  String equipoUsu1;
  String equipoUsu2;
  String posicionUsu1;
  String pocisionUsu2;
  int canGolesUsu1;
  int canGolesUsu2;
  String nombreUsu1;
  String nombreUsu2;
  int edadUsu1;
  int edadUsu2;

  print("Ahora vamos a crear dos futbolistas");
  print("Ingrese el equipo que pertenece el futbolista # 1:");
  equipoUsu1 = stdin.readLineSync()!;
  print("Ahora ingrese el equipo que pertenece el futbolista # 2:");
  equipoUsu2 = stdin.readLineSync()!;
  print("Ahora ingrese la pocision en la que juega el futbolista # 1:");
  posicionUsu1 = stdin.readLineSync()!;
  print("Ahora ingrese la pocision en la que juega el futbolista # 2:");
  pocisionUsu2 = stdin.readLineSync()!;
  print("Ahora ingrese la cantidad de goles que tiene el futbolista # 1:");
  canGolesUsu1 = int.parse(stdin.readLineSync()!);
  print("Ahora ingrese la cantiadd de goles que tiene el futbolista # 2:");
  canGolesUsu2 = int.parse(stdin.readLineSync()!);
  print("Cual es el nombre del futbolista # 1:");
  nombreUsu1 = stdin.readLineSync()!;
  print("Cual es el nombre del futbolista # 2:");
  nombreUsu2 = stdin.readLineSync()!;
  print("Cual la edad del futbolista # 1:");
  edadUsu1 = int.parse(stdin.readLineSync()!);
  print("Cual la edad del futbolista # 2:");
  edadUsu2 = int.parse(stdin.readLineSync()!);
  print("-------------------------------------------------------------------------------");

  Futbolista futbolista1 = Futbolista(equipoUsu1, posicionUsu1, canGolesUsu1, nombreUsu1, edadUsu1);
  Futbolista futbolista2 = Futbolista(equipoUsu2, pocisionUsu2, canGolesUsu2, nombreUsu2, edadUsu2);

  print("!Excelente¡, los futbolistas se han creado satisfactoriamente");
  print("Futbolista # 1:");
  futbolista1.mostrarInfo();
  print("Futbolista # 2:");
  futbolista2.mostrarInfo();

  //**********************************************************************************/
  //Creamos dos objetos instancias de la clase Programador ingresados por el usuario. 
  String empresaUsu1;
  String empresaUsu2;
  double salarioUsu1;
  double salarioUsu2;
  String nombreUsuEntre1;
  String nombreUsuEntre2;
  int edadUsuEntre1;
  int edadUsuEntre2;

  print("Ahora vamos a crear dos programadores");
  print("Ingrese la empresa que pertenece el entrenador # 1:");
  empresaUsu1 = stdin.readLineSync()!;
  print("Ingrese la empresa que pertenece el entrenador # 2:");
  empresaUsu2 = stdin.readLineSync()!;
  print("Ahora ingrese el salario del programador # 1:");
  salarioUsu1 = double.parse(stdin.readLineSync()!);
  print("Ahora ingrese el salario del programador # 2:");
  salarioUsu2 = double.parse(stdin.readLineSync()!);
  print("Cual es el nombre del programador # 1:");
  nombreUsuEntre1 = stdin.readLineSync()!;
  print("Cual es el nombre del programador # 2:");
  nombreUsuEntre2 = stdin.readLineSync()!;
  print("Cual la edad del futbolista # 1:");
  edadUsuEntre1 = int.parse(stdin.readLineSync()!);
  print("Cual la edad del futbolista # 2:");
  edadUsuEntre2 = int.parse(stdin.readLineSync()!);
  print("-------------------------------------------------------------------------------");

  Programador programador1 = Programador(empresaUsu1, salarioUsu1, nombreUsuEntre1, edadUsuEntre1);
  Programador programador2 = Programador(empresaUsu2, salarioUsu2, nombreUsuEntre2, edadUsuEntre2);

  print("!Excelente¡, los programador se han creado satisfactoriamente");
  print("Programador # 1:");
  programador1.mostrarInfoProgrador();
  print("Programador # 2:");
  programador2.mostrarInfoProgrador();







  
  
}