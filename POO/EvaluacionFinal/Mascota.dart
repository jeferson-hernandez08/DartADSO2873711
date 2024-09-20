class Mascota {
  String nombre;
  int edad;
  String tipoMascota;
  String raza;
  double peso;
  String color;
  String estirilizado;

  //Constructor Clase Mascota.}
  Mascota(this.nombre, this.edad, this.tipoMascota, this.raza, this.peso, this.color, this.estirilizado);

  void setnombre(String nuevoNombre) {
    this.nombre = nuevoNombre;
  }

  String getNombre() {
    return this.nombre;
  }

  void setEdad(int nuevaEdad) {
    this.edad = nuevaEdad;
  }

  int getEdad() {
    return this.edad; 
  }

  void setTipoMascota(String nuevoTipoMascota) {
    this.tipoMascota = nuevoTipoMascota;
  }

  String getTipoMascota() {
    return this.tipoMascota;
  }

  void setRaza(String nuevaRaza) {
    this.raza = nuevaRaza;
  }
  
  String getRaza() {
    return this.raza;
  }

  void setPeso(double nuevoPeso) {
    this.peso = nuevoPeso;
  }

  double getPeso() {
    return this.peso;
  }

  void setColorr(String nuevoColor){
    this.color = nuevoColor;
  }

  String getColor() {
    return this.color;
  }

  void setEstirilizado(String nuevoEstirilizado) {
    this.estirilizado = nuevoEstirilizado;
  }

  String getEstirilizado() {
    return this.estirilizado;
  }

}