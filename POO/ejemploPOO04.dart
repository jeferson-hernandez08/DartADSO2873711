import 'dart:io';
import 'Vehiculo.dart';

void main() {
  Vehiculo vehi_obj1 = Vehiculo("azul", 40, 2);
  vehi_obj1.avanzar(25);
  vehi_obj1.avanzar(25);
  vehi_obj1.avanzar(125);
  vehi_obj1.detenerse();

  //Listas o arrays de objetos. 
  List<String> nombresVehiculos = []; //Se crea lista de objetos Vehiculos
  for (var i = 0; i < 5; i ++) {
    print("Ingrese el nombre del vehiculo");
    nombresVehiculos.add(stdin.readLineSync()!);
  }
  print(nombresVehiculos);

  List<Vehiculo> listaVehiculos = []; //Se crea una lista de objetos de Vehiculos
  String colorUsuario;
  int velocidadUsuario;
  double tamanioUsuario;
  for (var i = 0; i < 5; i ++ ) {
    print("Ingrese el nombre del vehiculo ${i + 1}");
    colorUsuario = stdin.readLineSync()!;
    print("Ingrese la velocidad del vehiculo ${i + 1}");
    velocidadUsuario = int.parse(stdin.readLineSync()!);
    print("Ingrese la tamaño del vehiculo ${i + 1}");
    tamanioUsuario = double.parse(stdin.readLineSync()!);
    //Se crea el objeto de forma dinámica con los datos que ingrese el usuario 
    Vehiculo vehiculo_obj = Vehiculo(colorUsuario, velocidadUsuario, tamanioUsuario);
    print("*" * 50);
    print("vehiculo: ${i + 1}");
    vehiculo_obj.avanzar(30);
    vehiculo_obj.avanzar(20);
    vehiculo_obj.detenerse();
  }
}