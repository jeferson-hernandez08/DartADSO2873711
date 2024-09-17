import 'Persona.dart';

class Futbolista extends Persona {
  String _equipo;
  String _posicion; 
  int cantGoles; 

  //Constructor Clase Futboliosta
  Futbolista(this._equipo, this._posicion, this.cantGoles, String _nombre, int _edad) : super (_nombre, _edad);

  void setEquipo(String nuevoEquipo) {
    this._equipo = nuevoEquipo;
  }

  String getEquipo() {
    return this._equipo;
  }

  void setPocision(String nuevaPocision) {
    this._posicion = nuevaPocision;
  }

  String getPosicion() {
    return this._posicion;
  }

  void setCantGoles(int nuevosGoles) {
    this.cantGoles = nuevosGoles;
  }

  int getCantGoles() {
    return this.cantGoles;
  }


  void mostrarInfo() {
    this.mostrarInfoPersona();  //Heredamos de persona. 
    print("""
            Equipo: $_equipo
            Pocision: $_posicion
            Cantidad de Goles: $cantGoles
         """);
  }

  
}