class Servicio {
  void pagar() {
    print("Pagando desde el servicio");
  }
}

class Tarjeta extends Servicio {
  @override
  void pagar() {
    print("pago con tarjeta");
  }
}

class Efectivo extends Servicio {
  @override
  void pagar() {
    print("pago con efectivo");
  }
}

class Vales extends Servicio {
  @override
  void pagar() {
    print("pago con vales");
  }
}

void main() {
  var tarjeta = Tarjeta();
  var efectivo = Efectivo();
  var vales = Vales();
  var generico = Servicio();

  var servicios = [tarjeta, efectivo, vales, generico];

  servicios.forEach((s) {
    cajeroOxxo(s);
  });
}

void cajeroOxxo(Servicio servicio) {
  servicio.pagar();
}
