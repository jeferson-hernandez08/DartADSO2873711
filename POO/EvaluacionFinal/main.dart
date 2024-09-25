import 'dart:io';
import 'dart:math';
import 'Gato.dart';
import 'Perro.dart';

void main() {
  String nombreMascota;   //Variables tanto de perros como gatos. Se pueden usar una solas para todas las mascotas.
  int edadMascota;
  String tipoMascota;
  String razaMascota;
  double pesoMascota;
  String colorMascota;
  String estirilizadoMascota;
  int cantMascotas;
  List<Perro> listaPerros = [];
  List<Gato> listaGatos = [];
  int opcion;

  print("Bienvenido a la veterinara!");

  //*****************Perros********************//
  print("Vamos a ingresar las mascotas perrunos:");
  print("Ingrese la cantidad de perros:");
  cantMascotas = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < cantMascotas; i++) {
    print("Ingrese el nombre del perro # ${i + 1}:");
    nombreMascota = stdin.readLineSync()!;
    print("Ingrese la edad del perro # ${i+1} $nombreMascota:");
    edadMascota = int.parse(stdin.readLineSync()!);
    print("Ingrese el tipo de mascota del perro # ${i+1} $nombreMascota:");
    tipoMascota = stdin.readLineSync()!;
    print("Ingresa la raza del perro # ${i+1} $nombreMascota:");
    razaMascota = stdin.readLineSync()!;
    print("Ingrese el peso del perro # ${i+1} $nombreMascota:");
    pesoMascota = double.parse(stdin.readLineSync()!);
    print("Ingrese el color del perro # ${i+1} $nombreMascota:");
    colorMascota = stdin.readLineSync()!;
    print("Ingrese si el perro # ${i+1} $nombreMascota esta estirilizado:");
    estirilizadoMascota = stdin.readLineSync()!;

    String codigoMascota = generarCodigo(tipoMascota);  //IA

    Perro perro = Perro(nombreMascota, edadMascota, tipoMascota, razaMascota, pesoMascota, colorMascota, estirilizadoMascota, codigoMascota);  //IA

    listaPerros.add(perro);
    print("Se ha creado el Perro # ${i + 1} satisfactoriamente:");
    listaPerros[i].mostrarInfoPerro();
  }

  //Recorrer los elementos de la lista Objetos y llamar metodos. Mostrar informacion de cada elemento de la lista.
  print("*" * 100);
  print("Lista de perros creados:"); 
  for(int i = 0; i < listaPerros.length; i++) {
    print("Perro # ${i+1}:");
    listaPerros[i].mostrarInfoPerro();
  }
  
  //*****************Gatos********************//
  print("*" * 100);
  print("Vamos a ingresar las mascotas gatunas:");
  print("Ingrese la cantidad de gatos:");
  cantMascotas = int.parse(stdin.readLineSync()!);

  for(int i = 0; i < cantMascotas; i++){
    print("Ingrese el nombre del gato # ${i+1}:");
    nombreMascota = stdin.readLineSync()!;
    print("Ingrese la edad del gato # ${i+1} $nombreMascota:");
    edadMascota = int.parse(stdin.readLineSync()!);
    print("Ingrese el tipo de mascota del gato # ${i+1} $nombreMascota:");
    tipoMascota = stdin.readLineSync()!;
    print("Ingrese la raza del gato # ${i+1} $nombreMascota:");
    razaMascota = stdin.readLineSync()!;
    print("Ingrese el peso del gato # ${i+1} $nombreMascota:");
    pesoMascota = double.parse(stdin.readLineSync()!);
    print("Ingrese el color del gato # ${i+1} $nombreMascota:");
    colorMascota = stdin.readLineSync()!;
    print("Ingrese si el perro # ${i+1} $nombreMascota esta estirilizado:");
    estirilizadoMascota = stdin.readLineSync()!;

    String codigoMascota = generarCodigo(tipoMascota);  //IA

    Gato gato = Gato(nombreMascota, edadMascota, tipoMascota, razaMascota, pesoMascota, colorMascota, estirilizadoMascota, codigoMascota); //IA

    listaGatos.add(gato);
    print("Se ha creado el gato # ${i+1} satisfactoriamente:");
    listaGatos[i].mostrasInfoGato();
  }

  //Recorrer los elementos de la lista Objetos y llamar metodos. Mostrar informacion de cada elemento de la lista.
  print("*" * 100);
  print("Lista de gatos creados:");
  for (int i = 0; i < listaGatos.length; i++) {
    print("Gato # ${i+1}:");
    listaGatos[i].mostrasInfoGato();
  } 

  //Menu Mascotas. 
  print("*" * 100);
  do {
    print("Menu de mascotas:");
    print("1. Menu de Perros");
    print("2. Menu de Gatos");
    print("3. Para salir.");
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print("*" * 100);
        print("Lista de perros:");
        for (int i = 0; i < listaPerros.length; i++) {
          print("Perro # ${i+1}:");
          listaPerros[i].mostrarInfoPerro();
        }
      break;
      case 2:
        print("*" * 100);
        print("Lista de gatos:");
        for (int i = 0; i < listaGatos.length; i++) {
          print("Gato # ${i+1}:");
          listaGatos[i].mostrasInfoGato();
        }
      break;
      case 3:
        print("Hasta la proxima");
      break;
      default:
        print("Ingrese la opcion correcta");
      break;
    }
  }
  while (opcion != 3);
}

//IA
String generarCodigo(String tipo) {
  Random random = Random();
  String inicial = tipo.isNotEmpty ? tipo[0].toUpperCase() : 'X'; // Si el tipo está vacío, usar 'X' como inicial
  int numeroAleatorio = random.nextInt(100000); // Número entre 0 y 99999
  return '$inicial-${numeroAleatorio.toString().padLeft(5, '0')}'; // Asegura que el número tenga 5 cifras
}

//Terminar Menu Mascotas.