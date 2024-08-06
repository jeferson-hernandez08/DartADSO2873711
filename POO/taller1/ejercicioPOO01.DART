import 'dart:io';
import 'Empleado.dart';

void main() {
  Empleado persona1 = Empleado("Jeferson", 28, 1000000, "Vendedor", "temporal");
  persona1.aumentarSalario(10);
  persona1.cumplirAnios();
  String newPuesto = persona1.cambiarPuesto("Policia");  //Necesitamos una variable que lo reciba 
  print("El nuevo puesto es ll: $newPuesto");
  persona1.mostrarInformacion();
  double newBonificacion = persona1.calcularBonificacion();
  print("La binificacion es ll: $newBonificacion");
 
  
   
  
  //Punto 4: Creacion de la lista. 
  String nombre; 
  int edad;
  double salario;
  String puesto;
  String tipoContrato;
  int cantPersonas = 2;
  List <Empleado> listaEmpleados = []; 

  //Ciclo para llenar la lista de tipo persona
  for (int i = 0; i < cantPersonas; i ++ ) {
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
    Empleado empelado_obj = Empleado(nombre, edad, salario, puesto, tipoContrato);   //Variable tipo clase, luego esta variable clase la llamamos hacia el constructor
                                                                                     //para que guarden las variables ingresadas. Sin esto no funciona nada.
    //Se añade le vehiculo a la lista                                                 
    listaEmpleados.add(empelado_obj);                            //Agregamos a la listaEmpleados las variables del constructor.
  }

  //Llama metodo lista empleados y entra hay.
  mostrarListaEmpleados(listaEmpleados,cantPersonas);  //Reutilizamos la variable lista y variable 
}

void mostrarListaEmpleados(List<Empleado> listaEmpleados, cantPersonas) {   //Lmamamos variable Forma # 3 de hacerlo.
  //int cantPersonas = 2;   Copiamos y pegamos esta variable aqui Forma # 1.
  //Ciclo para recorrer elementos(objetos) de la lista y llamar los metodos.
  for (var i = 0; i < cantPersonas; i ++) {      //Con listaEmpleados.length evitamos la variable int cantPersonas = 2; otra manera de hacerlo Forma # 2.
    print("*" * 50);
    print("*** Empleado ${i + 1} ***");
    print("Ingrese cuento aumenta el salario al empleado ${listaEmpleados[i].nombre}");  //Permitimos aqui en salida que usuario ingrese salario 
    double salarioNuevo = double.parse(stdin.readLineSync()!);
    listaEmpleados[i].aumentarSalario(salarioNuevo);
    print("*****");
    listaEmpleados[i].cumplirAnios();   
    print("Ingrese el nuevo puesto del empleado ${listaEmpleados[i].nombre}");     //Permitimos aqui en salida que usuario ingrese puesto 
    String puestoNuevo = stdin.readLineSync()!;
    listaEmpleados[i].cambiarPuesto(puestoNuevo);
    print("El nuevo puesto es ll: $puestoNuevo");
    print("*****");
    listaEmpleados[i].mostrarInformacion();
    print("*****");
    double newBonificacion = listaEmpleados[i].calcularBonificacion();
    print("La binificacion es ll: $newBonificacion");
  }
}
