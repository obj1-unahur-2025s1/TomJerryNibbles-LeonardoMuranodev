object tom {
    var energia = 50
    var ultimoRatonComido = jerry
    var distanciaRecorrida = 0
    
    method velocidadMaxima() = 5 + energia / 10
    method energia() = energia

    method comer(unRaton) {
      energia = energia + 12 + unRaton.peso()
      ultimoRatonComido = unRaton
    }

    method corre(metros) {
      energia = energia - metros / 2
      distanciaRecorrida += metros 
    }

    method puedeCazar(distancia) = energia > distancia / 2

    method cazarADistancia(unRaton, unaDistancia) {
      //SI o si debo usar condicional
      if (self.puedeCazar(unaDistancia)) {
        self.corre(unaDistancia)
        self.comer(unRaton)
      }
    }
}

object jerry {
  var edad = 2

  method peso() = edad * 20

  method cumplirAnios(){
    edad += 1
  }



}

object nibbles {
  method peso() = 35

}

// Inventar otro ratón
object jorgito{
    //Jorgito puede cambiar su peso a voluntad 
    var peso = 30

    method peso() = peso

    method peso(nuevoPeso){
        peso = nuevoPeso
    }  
}