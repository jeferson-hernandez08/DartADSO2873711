import 'Mascota.dart';

class Gato extends Mascota {

   //Constructor Clase Gato.
  Gato(nombre, edad, tipoMascota, raza, peso, color, estirilizado, codigo) : super(nombre, edad, tipoMascota, raza, peso, color, estirilizado, codigo);

  void mostrasInfoGato() {
    mostrarInfo();   // Usar el método general de mostrar información - Heredamos de mascota. IA
//     print("""Código: $codigo
// Nombre del gato: $nombre
// edad del gato: $edad
// Tipo de mascota: $tipoMascota
// Raza del gato: $raza
// Peso del gato: $peso
// Color del gato: $color
// Estirilizado: $estirilizado
// """);
  }

}