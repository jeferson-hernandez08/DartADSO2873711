import 'Mascota.dart';

class Perro extends Mascota {
  
  //Constructor Clase Perro.
  Perro(nombre, edad, tipoMascota, raza, peso, color, estirilizado, codigo) : super(nombre, edad, tipoMascota, raza, peso, color, estirilizado, codigo); //IA

  void mostrarInfoPerro() {
    mostrarInfo();   // Usar el método general de mostrar información - Heredamos de mascota. O super.mostrarInfo(); IA
//     print("""Código: $codigo   //Para evitar la repeticion de codigo
// Nombre del perro: $nombre
// edad del perro: $edad
// Tipo de mascota: $tipoMascota
// Raza del perro: $raza
// Peso del perro: $peso
// Color del perro: $color
// Estirilizado: $estirilizado
// """);
  }

}