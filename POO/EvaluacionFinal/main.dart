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
    print("_________________________________________________________");
    print("Menu de mascotas:");
    print("1. Mostrar informacion de mascotas.");
    print("2. Buscar mascota por nombre y mostrar informacion.");
    print("3. Mostrar mascotas esterilizadoas.");
    print("4. Mostrar mascotas con mas de 5 años.");
    print("5. Para salir.");
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        do {
          print("_________________________________________________________");
          print("1. Mostrar informacion de perros.");
          print("2. Mostrar informacion de gatos");
          print("3. Para menu principal");
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
              print("Volviendo al menu principal");
            break;
            default:
              print("Ingrese la opcion correcta.");
            break;
          }
        }
        while (opcion != 3);
      break;
      case 2:
        do {
          print("_________________________________________________________");
          print("1. Mostrar mascota por nombre perro.");
          print("2. Mostrar mascota por nombre gato");
          print("3. Para volver a menu principal");
          opcion = int.parse(stdin.readLineSync()!);

          switch (opcion) {
            case 1:
              buscarMascotaPorNombre(listaPerros);
            break;
            case 2:

            break;

            case 3:
              print("Volviendo al menu principal...");
            break;
            default:
              print("Ingrese la opcion correcta");
            break;
          }
        } while(opcion != 3);
      break;
      case 5:
        print("Hasta la proxima");
      break;
      default:
        print("Ingrese la opcion correcta");
      break;
    }
  }
  while (opcion != 5);
}

//Codigo automaticamente para mascota. IA
String generarCodigo(String tipo) {
  Random random = Random();
  String inicial = tipo.isNotEmpty ? tipo[0].toUpperCase() : 'X'; // Si el tipo está vacío, usar 'X' como inicial
  int numeroAleatorio = random.nextInt(100000); // Número entre 0 y 99999
  return '$inicial-${numeroAleatorio.toString().padLeft(5, '0')}'; // Asegura que el número tenga 5 cifras
}

//Buscar mascota por el nombre 
void buscarMascotaPorNombre(List<Perro> listaPerros) {
  print('Ingrese el nombre de la mascota a buscar:');
  String nombreBusqueda = stdin.readLineSync()!.toLowerCase();

  bool encontrada = false;

  for (var perro in listaPerros) {  //For para recorre cada elemento de la lista. // En cada iteración,
    if (perro.nombre.toLowerCase() == nombreBusqueda) {                           // la variable perro toma el valor de un elemento de la lista perros.
      print('Mascota encontrada (Perro $nombreBusqueda):');
      perro.mostrarInfo();
      encontrada = true;
      break;
    }
  }

  // if (!encontrada) {
  //   for (var gato in gatos) {
  //     if (gato.nombre.toLowerCase() == nombreBusqueda) {
  //       print('Mascota encontrada (Gato):');
  //       gato.mostrarInfo();
  //       encontrada = true;
  //       break;
  //     }
  //   }
  // }

  if (!encontrada) {
    print('No se encontró ninguna mascota con ese nombre.');
  }
}

//Terminar Menu Mascotas...

// 1. Mostrar informacion de todas las mascotas. 
// 2. Buscar una mascota por el nombre y mostrar toda la informacion. 
// 3. Mostrar cuantas mascotas estan esterilizados. 
// 4. Mostrar cuantas mascotas tienen mas de 5 años. 