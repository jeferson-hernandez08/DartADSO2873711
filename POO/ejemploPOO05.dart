import 'dart:io';
import 'Vehiculo.dart';

void main () {
  int cantIteraciones = 2;
  String colorUsuario;
  int velocidadUsuario;
  double tamanioUsuario;
  String lugarParqueo;

   List<Vehiculo> listaVehiculos = [];
   //Ciclo para llenar la lista de tipo dehiculo
  for (var i = 0; i < cantIteraciones; i ++ ) {
    print("Ingrese el color del vehiculo ${i + 1}");
    colorUsuario = stdin.readLineSync()!;
    print("Ingrese la velocidad del vehiculo ${i + 1}");
    velocidadUsuario = int.parse(stdin.readLineSync()!);
    print("Ingrese el tamaño del vehiculo ${i + 1}");
    tamanioUsuario = double.parse(stdin.readLineSync()!);
    print("*" * 50);
    //Se instancia la clese vehiculo y se crea el objeto con los valores del usuario
    Vehiculo vehiculo_obj = Vehiculo(colorUsuario, velocidadUsuario, tamanioUsuario);
    //Se añade le vehiculo a la lista
    listaVehiculos.add(vehiculo_obj);
  }

  //Ciclo para recorrer elementos(objetos) de la lista y llamar los metodos.
  for (var i = 0; i < cantIteraciones; i ++) {
    print("*" * 50);
    print("*** Vehiculo ${i + 1} ***");
    listaVehiculos[i].avanzar(20);
    listaVehiculos[i].avanzar(80);
    listaVehiculos[i].avanzar(100);
    listaVehiculos[i].detenerse();
    listaVehiculos[i].avanzar(100);
    listaVehiculos[i].disminuirvelocidad(10);
    print("Ingrese donde desea parquear el vehiculo ${i + 1}");
    lugarParqueo = stdin.readLineSync()!;
    listaVehiculos[i].parquear(lugarParqueo);
  }
}