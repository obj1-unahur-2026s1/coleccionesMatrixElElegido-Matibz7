object neo {
  var energia=100
  method esElElegido() {
    return true
  }
  method saltar() {
    energia=energia/2
  }
  method vitalidad() {
    return energia/10
  }
}
object morfeo {
    var vitalidad=8
    var estaCansado=false
  method esElElegido() {
    return false
  }
  method saltar() {
    estaCansado= not estaCansado
    vitalidad=vitalidad -1
  }
  method vitalidad() {
    return vitalidad
    return 
  }
}
object triniti {
  method esElElegido() {
    return false
  }
  method vitalidad() {
    return 0
  }
  method saltar() {
    
  }
}