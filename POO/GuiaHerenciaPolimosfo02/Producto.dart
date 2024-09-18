import 'dart:convert';
import 'dart:ffi';
import 'dart:math';

//**********Clase 1 Padre Producto *********/
abstract class Producto {
  int _codigoProducto;
  String _nombreProducto;
  bool _disponible;
  double _precio;
  
  //Constructor Clase Producto
  Producto(this._codigoProducto, this._nombreProducto, this._disponible, this._precio);

  void mostrarInformacionProducto(String infoProducto) {
    print("""
      CODIGO PRODUCTO: $_codigoProducto
      NOMBRE PRODUCTO: $_nombreProducto
      DISPONIBLE: $_disponible ? "SI":"NO"
      PRECIO: $_precio
    """);
  }

  double realizarDescuento() {
    return _precio;
  }

  void setCodigoProducto(int newCodigo){
    _codigoProducto = newCodigo;
  }

  int getCodigoProducto(){
    return _codigoProducto;
  }

  void setNombreProducto(String newNombre){
    _nombreProducto = newNombre;
  }

  String getNombreProducto(){
    return _nombreProducto;
  }

  void setDisponible(bool newEstado){
    _disponible = newEstado;
  }

  bool getDisponible(){
    return _disponible;
  }

  void setPrecio(double newPrecio){
    _precio = newPrecio;
  }

  double getPrecio(){
    return _precio;
  }
}

//**********Clase 2 DiscoDuro *********/
class DiscoDuro extends Producto {
  String _tipoDisco;
  int _capacidad;

  //Constructor Clase DiscoDuro
  DiscoDuro(this._capacidad, this._tipoDisco, codigoProducto, nombreProducto, disponible, precio) : super(codigoProducto, nombreProducto, disponible, precio);

  void mostrarInformacionProducto(String infoProducto) {
    print("""
      CODIGO PRODUCTO: $_codigoProducto
      NOMBRE PRODUCTO: $_nombreProducto
      DISPONIBLE: $_disponible ? "SI":"NO"
      PRECIO: $_precio
      TIPO DISCO: $_tipoDisco
      CAPACIDAD: $_capacidad
    """);
  }

  double realizarDescuento() {
    return _precio*0.8;    //Para descuento del 20 %
  }

  void setTipoDisco(String newTipo){
    _tipoDisco = newTipo;
  }

  String getTipoDisco(){
    return _tipoDisco;
  }

  void setcapacidad(int newCapacidad){
    _capacidad = newCapacidad;
  }

  int getCapacidad(){
    return _capacidad;
  }

  getNombre() {}

}

//*************Clase 3 Marcador **************/
class Marcador extends Producto {
  String _colorTinta;
  String _tipoMarcador;
  
  //Constructor Clase Marcador.
  Marcador(this._colorTinta, this._tipoMarcador, codigoProducto, nombreProducto, disponible, precio) : super(codigoProducto, nombreProducto, disponible, precio);

  void mostrarInformacionProducto(String infoProducto) {
    print("""
      CODIGO PRODUCTO: $_codigoProducto
      NOMBRE PRODUCTO: $_nombreProducto
      DISPONIBLE: $_disponible ? "SI":"NO"
      PRECIO: $_precio
      COLOR TINTA: $_colorTinta
      TIPO MARCADOR: $_tipoMarcador
    """);
  }

  double realizarDescuento() {
    return _precio*0.9;      //Para descuento del 10 %
  }

  void setColor(String newColor){
    _colorTinta = newColor;
  }

  String getColor(){
    return _colorTinta;
  }

  void setTipoMarcador(String newTipoMarcador){
    _tipoMarcador = newTipoMarcador;
  }

  String getTipoMarcador(){
    return _tipoMarcador;
  }

  getNombre() {}
}

//*************Clase 4 Electrodimestico **************/
class Electrodomestico extends Producto {
  int _consumoWats;
  bool _tieneBluetooth;
  
  //Constructor Clase Electrodomestico.
  Electrodomestico(this._consumoWats, this._tieneBluetooth, codigoProducto, nombreProducto, disponible, precio) : super(codigoProducto, nombreProducto, disponible, precio);

  void mostrarInformacionProducto(String infoProducto) {
    print("""
      CODIGO PRODUCTO: $_codigoProducto
      NOMBRE PRODUCTO: $_nombreProducto
      DISPONIBLE: $_disponible ? "SI":"NO"
      PRECIO: $_precio
      CONSUMO WATS: $_consumoWats
      TIENE BLUETOOTH: $_tieneBluetooth ? "SI":"NO"
    """);
  }

  double realizarDescuento() {
    return _precio*0.7;      //Para descuento del 30 %
  }

  void setConsumo(int newConsumo){
    _consumoWats = newConsumo;
  }

  int getconsumo() {
    return _consumoWats;
  }

  void setBluetooth(bool newEstado){
    _tieneBluetooth = newEstado;
  }

  bool getBluetooth(){
    return _tieneBluetooth;
  }
}

//*********Clase 5 Portatil (Hijo de Electrodomestico)**********/
class Portatil extends Electrodomestico {
  int _tamanoMmemoria;
  String _procesador;

  //Constructor Clase Portatil.                 //Hereda tambien los atributos del producto ya que producto es el abuelo.
  Portatil(this._tamanoMmemoria, this._procesador, consumoWats, tieneBluetooth, codigoProducto, nombreProducto, disponible, precio) : super(consumoWats, tieneBluetooth, codigoProducto, nombreProducto, disponible, precio);

  void mostrarInformacionProducto(String infoProducto) {
    print("""
      CODIGO PRODUCTO: $_codigoProducto
      NOMBRE PRODUCTO: $_nombreProducto
      DISPONIBLE: $_disponible ? "SI":"NO"
      PRECIO: $_precio
      CONSUMO WATS: $_consumoWats
      TIENE BLUETOOTH: $_tieneBluetooth ? "SI":"NO"
      TAMAÑO MEMORIA: $_tamanoMmemoria
      PROCESADOR: $_procesador
    """);
  }

  double calcularPrecioConsumo(int horas) {
    return (horas*500*_consumoWats).toDouble();
  }

  void settamano(int newTamano){
    _tamanoMmemoria = newTamano;
  }

  int get_tamano() {
    return _tamanoMmemoria;
  }

  void setprocesador(String newProcesador) {
    _procesador = newProcesador;
  }

  String get_procesador() {
    return _procesador;
  }

  getNombre() {}

}

//*********Clase 6 Parlante (Hijo de Electrodomestico)**********/
class Parlante extends Electrodomestico {
  String _potencia;
  double _precio;

  //Constructor Clase Parlante                                         //Hereda tambien los atributos del producto ya que producto es el abuelo.
  Parlante(this._potencia, this._precio, tieneBluetooth, consumoWats, codigoProducto, nombreProducto, disponible, precio) : super(consumoWats, tieneBluetooth, codigoProducto, nombreProducto, disponible, precio);

  void mostrarInformacionProducto(String infoProducto) {
    print("""
      CODIGO PRODUCTO: $_codigoProducto
      NOMBRE PRODUCTO: $_nombreProducto
      DISPONIBLE: $_disponible ? "SI":"NO"
      PRECIO: $_precio
      CONSUMO WATS: $_consumoWats
      TIENE BLUETOOTH: $_tieneBluetooth ? "SI":"NO"
      POTENCIA: $_potencia
      PRECIO: $_precio
    """);
  }

  void setPotencia(String newPotencia){
    _potencia = newPotencia;
  }

  String getPotencia(){
    return _potencia;
  }

  void setPrecio(double newPrecio){
    _precio = newPrecio;
  }

  double getPrecio(){
    return _precio;
  }

  getNombre() {}

  calcularPrecioConsumo(int horas) {}
}
