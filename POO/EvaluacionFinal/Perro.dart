import 'Mascota.dart';

class Perro extends Mascota {
  
  //Constructor Clase Perro.
  Perro(nombre, edad, tipoMascota, raza, peso, color, estirilizado) : super(nombre, edad, tipoMascota, raza, peso, color, estirilizado);

  void mostrarInfoPerro() {
    print("""
Nombre del perro: $nombre
edad del perro: $edad
Tipo de mascota: $tipoMascota
Raza del perro: $raza
Peso del perro: $peso
Color del perro: $color
Estirilizado: $estirilizado
""");
  }

}