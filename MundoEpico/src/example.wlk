#Personaje inherits Bando

method puedeDerrotarA(contindente) = self.condicionParaDerrotar(contindente)

method condicionParaDerrotar(contindente) = self.nivelAptitud() > contindente.nivelAptitud()

method dispuestoALuchar(personaje)

#Humano inherits Personaje

override method condicionParaDerrotar(contindente) = super (contindente)

override method dispuestoALuchar(personaje)= (self.esVardeno == true && self.nivelDeAptitud() > 18) or (self.esVardeno() == false)

#Sombra inherits Personaje

const espiritusMalignos = []

method cantidadDeEspiritusMalignos() = espiritusMalignos.count()

override method condicionParaDerrotar (contindente) = (self.nivelAptitud + self.puntosMagicos()) > (contindente.nivelAptitud() +10)

method puntosMagicos() = (self.cantidadDeEspiritusMalignos() * 5) + 15

override method dispuestoALuchar() = self.cantidadDeEspiritusMalignos() >= 5

#JineteDragon inherits Personaje

const humano = []

const dragon = []

override method condicionParaDerrotar(contindente) = super(contindente) && self.debeSerBandoContrario()

method debeSerBandoContrario() = 

override method dispuestoALuchar(humano)= dragon.respetaA(humano)

#Dragon inherits Personaje

const humano = []

method RespetaA(humano) = (humano.nivelAptitud() > 30 && (humano.esVardeno() == self.esVardeno()) == true) or (condicionParaDerrotar(humano) && self.esVardeno == false)

override method dispuestoALuchar() = true

#Bando

const personajes = []

method esVardeno() = esVardeno

method poderDelBando(personajes)= personajes.dispuestoALuchar().sum(personajes => personajes.nivelDeAptitud)
