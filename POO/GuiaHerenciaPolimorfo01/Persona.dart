class Persona {
  String _nombre; 
  int _edad; 

  ////Constructor Clase Vehiculo
  Persona(this._nombre, this._edad);

  void setNombre(String nuevoNombre) {
    this._nombre = nuevoNombre;
  }

  String getNombre() {
    return this._nombre;
  }

  void setEdad(int nuevaEdad) {
    this._edad = nuevaEdad;
  }

  int getEdad() {
    return this._edad;
  }

  void mostrarInfoPersona() {
     print(""" 
            Nombre: $_nombre
            Edad: $_edad
          """);
  }

}