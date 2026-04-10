// ARMAS

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


// ELEMENTOS

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


// PERSONAJES

object floki {
  var arma = jabalina   // floki arranca con la jabalina

  method arma() = arma

  method arma(unArma) {
    arma = unArma
  }

  method encontrar(elemento) {
    if (arma.estaCargada()) {
      elemento.recibirAtaque(arma.potencia())
      arma.registrarUso()
    }
  }
}

object mario {
  var valorRecolectado = 0
  var ultimoElemento = null

  method valorRecolectado() = valorRecolectado

  method ultimoElemento() = ultimoElemento

  method encontrar(elemento) {
    valorRecolectado += elemento.valorParaMario()
    elemento.recibirTrabajo()
    ultimoElemento = elemento   // ← línea que faltaba en el enunciado
  }

  method esFeliz() =
    valorRecolectado >= 50 || ultimoElemento.altura() >= 10
}


// JUGADORA

object luisa {
  var personajeActivo = null

  method personajeActivo() = personajeActivo

  method personajeActivo(unPersonaje) {
    personajeActivo = unPersonaje
  }

  method aparece(elemento) {
    personajeActivo.encontrar(elemento)
  }
}
