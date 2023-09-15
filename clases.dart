void main() {
  Hora hora = Hora();

  hora.h = 9;
  hora.m = 13;
  hora.s = 30;

  hora.mostrarHora();

  Reloj reloj = Reloj(3, 15, 20);
  reloj.mostrarHora();

  Reloj relojNombrado = Reloj.nombrado(hora: 8, segundo: 30);
  relojNombrado.mostrarHora();

  relojNombrado.sumarHora(4);
}

// Objeto mas basico

class Hora {
  // Parametros
  // int h = 0;
  // int m = 0;
  // int s = 0;
  int h = 0, m = 0, s = 0;

  // Metodos
  mostrarHora() {
    print('${h}:${m}:${s}');
  }
}

class Reloj {
  int? hora = 0, minuto = 0, segundo = 0;

  //Constructor
  // Reloj(hora, minuto, segundo) {
  //   this.hora = hora;
  //   this.minuto = minuto;
  //   this.segundo = segundo;
  // }
  Reloj(this.hora, this.minuto, this.segundo);

  // Constructores nombrados

  Reloj.nombrado({this.hora, this.minuto = 10, required this.segundo});

  mostrarHora() {
    print('${hora}:${minuto}:${segundo}');
  }

  sumarHora(int suma) {
    if (hora != null) {
      print('${hora! + suma}:${minuto}:${segundo}');
    }
  }
}
