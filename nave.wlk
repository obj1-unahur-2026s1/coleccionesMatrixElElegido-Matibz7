import pasajeros.*

object nave {
    const pasajeros=[neo, morfeo,triniti]
  
  method subirALaNave(unPasajero) {
    if(pasajeros.contains(unPasajero))
    self.error("el pasajero ya esta en la nave")
    pasajeros.add(unPasajero)
  }
  method bajarDeLaNave(unPasajero) {
    if( not self.estaEnLaNave(unPasajero)) self.error("no esta en la nave el pasajero")
        pasajeros.remove(unPasajero)
  }
  method estaEnLaNave(unPasajero) {
    pasajeros.contains(unPasajero)
  }
  method cantidadDePasajeros() {
    return pasajeros.size()
  }
  method pasajeroDeMayorVitalidad() {
    return  pasajeros.max({p=>p.vitalidad()}) //devuelve el objecto con max vitalidad
  }
  method estaElElegido() {
    pasajeros.any({p=>p.estaElElegido()})  
  }
  method chocar() {
    pasajeros.forEach({p=>p.saltar()
    p.bajarDeLaNave()})
  }
  method saltan(unaLista) {
    unaLista.forEach({p=>p.saltar()})
  }
  method acelerar() {
    pasajeros.filter({p => not p.estaElElegido()}).forEach({p => p.saltar()})
    }
  method noElegidos() {
    pasajeros.filter({p=> not p.estaElElegido()})
  }
  method estaEquilibrada() {
    return self.pasajeroDeMayorVitalidad().vitalidad() <= self.pasajeroDeMayorVitalidad().vitalidad()*2
  }
  method vitalidadesDePasajeros() {
   pasajeros.map({p=>p.vitalidad()})
  }
  method pasajerosValiosos() {
    return pasajeros.filter({p=>p.vitalidad()>5})
  }
  method hayAlguienAlHorno() {
    pasajeros.any({p=>p.vitalidad()==0})
  }
  method estanEnCondicionesDeEnfrentarAlAgente() {
    pasajeros.all({p=>p.vitalidad()>2})
  }
  method vitalidadPromedio() {
    if(pasajeros.isEmpty()) return 0
    else  self.vitalidadesDePasajeros().sum()/self.cantidadDePasajeros() 
  }
  method cantidadPasajerosVitalidadesPar() {
    pasajeros.count({p=>p.vitalidad()%2==0})
  }
  method simulacroDeCombate() {
    pasajeros.forEach({p=>3.times({i=>p.saltar()})})
  }
  method vitalidadesPasajeros() {
    pasajeros.map({p=>p.vitalidad()})
  }
  method pasajerosOrdenadosPorVitalidad() {
    pasajeros.sortBy({p1,p2=>p1.vitalidad()<p2.vitalidad()})
  }
  method elegirPasajeroAlAzar(){
    pasajeros.anyone()
  }
  method cantidadDeElegidos() {
    pasajeros.count({p=>p.estaElElegido()})
  }
  method potenciaVital() {
    if (pasajeros.isEmpty()) return 1
    var total = 1
    self.vitalidadesPasajeros().forEach({ v => total = total * v })
    return total
  }

}