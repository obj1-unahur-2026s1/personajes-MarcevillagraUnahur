object castillo {
  const altura = 20
  var defensa = 150

  method altura() = altura

  method defensa() = defensa

  method recibirAtaque(potencia) {
    defensa -= potencia
  }

  method valorParaMario() = defensa / 5

  method recibirTrabajo() {
    defensa = (defensa + 20).min(200)
  }
}

object aurora {
  const altura = 1
  var viva = true

  method altura() = altura

  method estaViva() = viva

  method recibirAtaque(potencia) {
    if (potencia >= 10) {
      viva = false
    }
  }

  method valorParaMario() = 15

  method recibirTrabajo() {
    // no le pasa nada
  }
}

object tipa {
  var altura = 8

  method altura() = altura

  method recibirAtaque(potencia) {
    // no le pasa nada
  }

  method valorParaMario() = altura * 2

  method recibirTrabajo() {
    altura += 1
  }
}