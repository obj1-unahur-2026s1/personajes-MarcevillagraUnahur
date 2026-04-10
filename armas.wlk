object jabalina {
  var cargada = true

  method potencia() = 30

  method estaCargada() = cargada

  method registrarUso() {
    cargada = false
  }
}


object ballesta {
  var flechas = 10

  method flechas() = flechas

  method potencia() = 4

  method estaCargada() = flechas > 0

  method registrarUso() {
    flechas -= 1
  }
}