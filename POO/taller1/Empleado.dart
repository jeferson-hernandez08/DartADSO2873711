class Empleado {

  //Punto 1: Declaracionde variables
  String nombre; 
  int edad;
  double salario;
  String puesto;
  String tipoContrato;

  //Punto 2: Constructor clase vehiculo. Prueba git hub
  Empleado(this.nombre, this.edad, this.salario, this.puesto, this.tipoContrato);

  //Punto 3: Crecion de Metodos. 
  //metodo aumentar salario
  void aumentarSalario(double porcentaje) {
    double incrementoSalario, nuevoSalario;
    incrementoSalario = this.salario * porcentaje / 100;
    nuevoSalario = incrementoSalario + this.salario;
    this.salario = nuevoSalario;  //Actualizamos el atributo
    print("Su nuevo salario incrementado es: $nuevoSalario");
    //Otra forma realizarlo estandar Profe
    //this.salario += (this.salario * porcentaje) / 100;
    //print("Su nuevo salario incrementado es: $this.salario");
  }

  //Metodo cumplir años.
  void cumplirAnios() {
    int nuevaEdad = this.edad + 1;
    this.edad = nuevaEdad;
    print("La nueva es de: $nuevaEdad");
    //Otra forma realizarlo estandar Profe
    //this.edad++;
    //return this.edad;
  }

  //Metodo cambiar puesto. 
  String cambiarPuesto(String nuevoPuesto) {
    //Otra forma realizarlo estandar Profe
    this.puesto = nuevoPuesto;
    return this.puesto;
    //print("El nuevo puesto del empleado es: $nuevoPuesto");
  }

  //Metodo mostrar informacion. 
  void mostrarInformacion() {
    //Otra forma realizarlo estandar Profe
    print("""
        Nombre: $nombre.
        Edad: $edad.
        Salario: $salario.
        Puesto: $puesto.
        tipoContrato $tipoContrato
    """);
    //Forma larga
    print("El nombre del empleado es: $nombre");
    print("La edad del empleado es: $edad");
    print("El salario del empleado es: $salario");
    print("El puesto del empleado es: $puesto");
    print("El tipo contrato del empleado es: $tipoContrato");
  }

  //Metodo bonificacion
  double calcularBonificacion() {
    //Otra forma realizarlo estandar Profe
    if (this.tipoContrato.toLowerCase() == "contratista") {
      print("Se metio por contratista");
      return this.salario = this.salario + this.salario * 0.1;
    }
    else if (this.tipoContrato.toLowerCase() == "temporal") {
            print("Se metio por temporal Prueba");
            return this.salario = this.salario + this.salario * 0.05;        
          }
          else if (this.tipoContrato.toLowerCase() == "indefinido") {
                  print("Se metio por indefinido");
                  return this.salario = this.salario + (this.salario * 0.15);        
                }
                else {
                  return 0;
                }
    
  }
}