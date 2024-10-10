import 'dart:io';

class Mascota {
  String nombre;
  int edad;
  String raza;

  Mascota(this.nombre, this.edad, this.raza);

  void mostrarInfo() {
    print('Nombre: $nombre');
    print('Edad: $edad');
    print('Raza: $raza');
  }
}

class Perro extends Mascota {
  String ladrido;

  Perro(String nombre, int edad, String raza, this.ladrido) : super(nombre, edad, raza);

  @override
  void mostrarInfo() {
    super.mostrarInfo();
    print('Ladrido: $ladrido');
  }
}

class Gato extends Mascota {
  String maullido;

  Gato(String nombre, int edad, String raza, this.maullido) : super(nombre, edad, raza);

  @override
  void mostrarInfo() {
    super.mostrarInfo();
    print('Maullido: $maullido');
  }
}

List<Perro> perros = [];
List<Gato> gatos = [];

void ingresarMascota() {
  print('¿Es un perro o un gato? (p/g):');
  String tipo = stdin.readLineSync()!.toLowerCase();

  print('Ingrese el nombre:');
  String nombre = stdin.readLineSync()!;

  print('Ingrese la edad:');
  int edad = int.parse(stdin.readLineSync()!);

  print('Ingrese la raza:');
  String raza = stdin.readLineSync()!;

  if (tipo == 'p') {
    print('Ingrese el ladrido:');
    String ladrido = stdin.readLineSync()!;
    perros.add(Perro(nombre, edad, raza, ladrido));
  } else if (tipo == 'g') {
    print('Ingrese el maullido:');
    String maullido = stdin.readLineSync()!;
    gatos.add(Gato(nombre, edad, raza, maullido));
  }
}

void buscarMascotaPorNombre() {
  print('Ingrese el nombre de la mascota a buscar:');
  String nombreBusqueda = stdin.readLineSync()!.toLowerCase();

  bool encontrada = false;

  for (var perro in perros) {  //For para recorre cada elemento de la lista. // En cada iteración, 
    if (perro.nombre.toLowerCase() == nombreBusqueda) {                      // la variable perro toma el valor de un elemento de la lista perros.
      print('Mascota encontrada (Perro):');
      perro.mostrarInfo();
      encontrada = true;
      break;
    }
  }

  if (!encontrada) {
    for (var gato in gatos) {
      if (gato.nombre.toLowerCase() == nombreBusqueda) {
        print('Mascota encontrada (Gato):');
        gato.mostrarInfo();
        encontrada = true;
        break;
      }
    }
  }

  if (!encontrada) {
    print('No se encontró ninguna mascota con ese nombre.');
  }
}

void main() {
  while (true) {
    print('\n1. Ingresar mascota');
    print('2. Buscar mascota por nombre');
    print('3. Salir');
    print('Seleccione una opción:');
    
    String opcion = stdin.readLineSync()!;
    
    switch (opcion) {
      case '1':
        ingresarMascota();
        break;
      case '2':
        buscarMascotaPorNombre();
        break;
      case '3':
        print('Gracias por usar el sistema. ¡Hasta luego!');
        return;
      default:
        print('Opción no válida. Intente de nuevo.');
    }
  }
}