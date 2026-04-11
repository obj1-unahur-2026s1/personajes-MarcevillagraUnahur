import armas.*  
import elementos.*  

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
    ultimoElemento = elemento   
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
