import 'dart:io';
import 'Perro.dart';

void main() {
  List<Perro> listaPerros = [];
  String nombrePerro;
  int edadPerro;
  String tipoMascotaPerro;
  String razaPerro;
  double pesoPerro;
  String colorPerro;
  String estirilizadoPerro;
  int cantPerros;

  print("Bienvenido a la veterinara!");
  print("Vamos a ingresar las mascotas perrunos:");
  print("Ingrese la cantidad de perros:");
  cantPerros = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < cantPerros; i++) {
    print("Ingrese el nombre del perro #${i + 1}:");
    nombrePerro = stdin.readLineSync()!;
    print("Ingrese la edad del perro #${i+1} $nombrePerro:");
    edadPerro = int.parse(stdin.readLineSync()!);
    print("Ingrese el tipo de mascota del perro #${i+1} $nombrePerro:");
    tipoMascotaPerro = stdin.readLineSync()!;
    print("Ingresa la raza del perro #${i+1} $nombrePerro:");
    razaPerro = stdin.readLineSync()!;
    print("Ingrese el peso del perro #${i+1} $nombrePerro:");
    pesoPerro = double.parse(stdin.readLineSync()!);
    print("Ingrese el color del perro #${i+1} $nombrePerro:");
    colorPerro = stdin.readLineSync()!;
    print("Ingrese si el perro #${i+1} $nombrePerro esta estirilizado:");
    estirilizadoPerro = stdin.readLineSync()!;

    Perro perro = Perro(nombrePerro, edadPerro, tipoMascotaPerro, razaPerro, pesoPerro, colorPerro, estirilizadoPerro);

    listaPerros.add(perro);
    //perro.mostrarInfoPerro();

    // for (int i = 0; i < listaPerros.length; i++) {
    //   perro.mostrarInfoPerro();
    // }

  }
 
}