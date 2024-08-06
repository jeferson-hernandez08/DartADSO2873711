import 'dart:io';
import 'Empleado.dart';

void main () {
  Empleado persona1 = Empleado("Jeferson", 28, 1000000, "Vendedor", "Indefinido");
  persona1.aumentarSalario(0.10);
  persona1.cumplirAnios();
  persona1.cambiarPuesto("Policia");
  persona1.mostrarInformacion();
  persona1.calcularBonificacion("Temporal"); //Cambiamos aqui el tipo de contrato para validar que tipo de bonificacion.
  
  //Punto 4: Creacion de la lista. 
  String nombre; 
  int edad;
  double salario;
  String puesto;
  String tipoContrato;
  int cantPersonas = 2;
  List <Empleado> listaEmpleados = []; 

  //Ciclo para llenar la lista de tipo dehiculo
  for (var i = 0; i < cantPersonas; i ++ ) {
    print("Ingrese el nombre de la persona ${i + 1}");
    nombre = stdin.readLineSync()!;
    print("Ingrese la edad de la persona ${i + 1}");
    edad = int.parse(stdin.readLineSync()!);
    print("Ingrese el salario de la persona ${i + 1}");
    salario = double.parse(stdin.readLineSync()!);
    print("Ingrese el puesto de la persona ${i + 1}");
    puesto = stdin.readLineSync()!;
    print("Ingrese el tipo de contrato de la persona ${i + 1}");
    tipoContrato = stdin.readLineSync()!;
    print("*" * 50);
    //Se instancia la clese vehiculo y se crea el objeto con los valores del usuario
    Empleado empelado_obj = Empleado(nombre, edad, salario, puesto, tipoContrato);
    //Se añade le vehiculo a la lista
    listaEmpleados.add(empelado_obj);
  }

  //Ciclo para recorrer elementos(objetos) de la lista y llamar los metodos.
  for (var i = 0; i < cantPersonas; i ++) {
    print("*" * 50);
    print("*** Empleado ${i + 1} ***");
    listaEmpleados[i].aumentarSalario(0.10);
    listaEmpleados[i].cumplirAnios();
    listaEmpleados[i].cambiarPuesto("Policia");
    listaEmpleados[i].mostrarInformacion();
    listaEmpleados[i].calcularBonificacion("Temporal");
  }

}