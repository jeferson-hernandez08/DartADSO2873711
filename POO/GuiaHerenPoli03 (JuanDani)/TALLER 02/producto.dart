import 'dart:convert';
import 'dart:ffi';
import 'dart:math';

abstract class Producto {
  int _codigoProducto;
  String _nombreProducto;
  bool _disponible;
  double _precio;

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



class DiscoDuro extends Producto {
  String _tipoDisco;
  int _capacidad;

  DiscoDuro(this._capacidad, this._tipoDisco, codigoProducto, nombreProducto, disponible, precio):super(codigoProducto, nombreProducto, disponible, precio);

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
    return _precio*0.8;
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


class Marcador extends Producto {
  String _colorTinta;
  String _tipoMarcador;

  Marcador(this._colorTinta, this._tipoMarcador, codigoProducto, nombreProducto, disponible, precio):super(codigoProducto, nombreProducto, disponible, precio);

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
    return _precio*0.9;
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


class Electrodomestico extends Producto {
  int _consumoWats;
  bool _tieneBluetooth;

  Electrodomestico(this._consumoWats, this._tieneBluetooth, codigoProducto, nombreProducto, disponible, precio):super(codigoProducto, nombreProducto, disponible, precio);

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
    return _precio*0.7;
  }

  int getconsumo() {
    return _consumoWats;
  }

  void setConsumo(int newConsumo){
    _consumoWats = newConsumo;
  }

  bool getBluetooth(){
    return _tieneBluetooth;
  }

  void setBluetooth(bool newEstado){
    _tieneBluetooth = newEstado;
  }

}


class Portatil extends Electrodomestico {
  int _tamanoMmemoria;
  String _procesador;

  Portatil(this._tamanoMmemoria, this._procesador, consumoWats, tieneBluetooth, codigoProducto, nombreProducto, disponible, precio):super(consumoWats, tieneBluetooth, codigoProducto, nombreProducto, disponible, precio);

  double calcularPrecioConsumo(int horas) {
    return (horas*500*_consumoWats).toDouble();
  }


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

  int get_tamano() {
    return _tamanoMmemoria;
  }

  void settamano(int newTamano){
    _tamanoMmemoria = newTamano;
  }

  String get_procesador() {
    return _procesador;
  }

  void setprocesador(String newProcesador) {
    _procesador = newProcesador;
  }

  getNombre() {}

}

class Parlante extends Electrodomestico {
  String _potencia;
  double _precio;

  Parlante(this._potencia, this._precio, tieneBluetooth,consumoWats, codigoProducto, nombreProducto, disponible, precio):super(consumoWats, tieneBluetooth, codigoProducto, nombreProducto, disponible, precio);

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
