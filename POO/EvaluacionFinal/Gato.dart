import 'Mascota.dart';

class Gato extends Mascota {

   //Constructor Clase Gato.
  Gato(nombre, edad, tipoMascota, raza, peso, color, estirilizado) : super(nombre, edad, tipoMascota, raza, peso, color, estirilizado);

  void mostrasInfoGato() {
    print("""
Nombre del gato: $nombre
edad del gato: $edad
Tipo de mascota: $tipoMascota
Raza del gato: $raza
Peso del gato: $peso
Color del gato: $color
Estirilizado: $estirilizado
""");
  }

}