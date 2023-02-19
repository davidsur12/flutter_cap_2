import 'dart:math';

class Conversiones {
  static double kilometrosToMetros(double valor) {
    return (valor * 1000);
  }

  static double CentimetroToMetros(double valor) {
    return (valor / 100);
  }

  static double MilimetrosToMetros(double valor) {
    return (valor / 1000);
  }

  static double MicrometroToMetro(double valor) {
    return (valor / (pow(10, 6)));
  }

  static double NanometroToMetro(double valor) {
    return (valor / (pow(10, 9)));
  }

  static double MillaToMetro(double valor) {
    return (valor * 1609.3439941);
  }

  static double YardaToMetro(double valor) {
    return (valor / 1.0936133);
  }

  static double PieToMetro(double valor) {
    return (valor / 3.2808399);
  }

  static double PulgadaToMetro(double valor) {
    return (valor / 39.3700787);
  }

  static double MillanauticaToMetro(double valor) {
    return (valor * 1851.9993259);
  }
//-------------------------------------

  static double MetrosToKilometros(double valor) {
    return (valor / 1000);
  }

  static double MetrosToCentimetro(double valor) {
    return (valor * 100);
  }

  static double MetrosToMilimetros(double valor) {
    return (valor * 1000);
  }

  static double MetroToMicrometro(double valor) {
    return (valor * (pow(10, 6)));
  }

  static double MetroToNanometro(double valor) {
    return (valor * (pow(10, 9)));
  }

  static double MetroToMilla(double valor) {
    return (valor / 1609.3439941);
  }

  static double MetroToYarda(double valor) {
    return (valor * 1.0936133);
  }

  static double MetroToPie(double valor) {
    return (valor * 3.2808399);
  }

  static double MetroToPulgada(double valor) {
    return (valor * 39.3700787);
  }

  static double MetroToMillanautica(double valor) {
    return (valor / 1851.9993259);
  }
}
