#Niño inherits LegionNiños

method cantidadCaramelos()= cantidadCaramelos

method cantidadCaramelos(_cantidadCaramelos){cantidadCaramelos= _cantidadCaramelos }

const elementos = []

method cantidadCaramelos()= cantidadCaramelos

method actitud() = actitud

method capacidadAsustar(elementos) = elementos.sustoQueGenera() * self.actitud()

method sustoQueGeneranTodos()= elementos.sum(elementos => elementos.sustoQueGenera())

override method intentaAsustarA(adulto)= {
	if(adulto.toleranciaA() < self.capacidadAsustar())
		cantidadCaramelos += adulto.entregaCaramelosA()
}

method niñoConMasDe15Caramelos()= self.cantidadCaramelos > 15

method niñoConMasDe10Caramelos()= self.cantidadCaramelos > 10

#Elementos

method sustoQueGenera(elemento)= 

#ElementoMaquillaje

override method sustoQueGenera()= 3

#ElementoTraje

method esTerrorifico() = terrorifico

override method sustoQueGenera()= {
	if(esTerrorifico() == true)
		return 5
	else
		return 2
}

#Adulto

const niñosQueLoAsustaron= []

const niñosConMasDe15Caramelos = self.niñosConMasDe15Caramelos()

method toleranciaA()= 10 * self.cantidadNiñosConMasDe15Caramelos()

method cantidadNiñosConMasDe15Caramelos()= niñosQueLoAsustaron.count(niños => niños.)

method niñosConMasDe15Caramelos()= niñosQueLeAsustaron.filter(niños => niños.niñoConMasDe15Caramelos())

method entregaCaramelosA()= self.toleranciaA() / 2

#AdultoComun

override method entregaCaramelosA()= super()

#AdultoAbuelo

override method entregaCaramelosA()= super() / 2

#AdultoNecio

override method entregaCaramelosA()= 0


#LegionNiños

const niños= []

const niñosConjunto= #{}

method conjuntoSinRepetir()= niñosConjunto.asSet()

method cantidadDeNiños()= conjuntoSinRepetir().size()

method conversionConjunto()= niños.conjuntoSinRepetir().sortedBy(condicion)

method crearLegion(){
	if(self.cantidadDeNiños > 2)
		niños= self.conversionConjunto()
	else
		throw new UserException ("El conjunto no posee al menos 2 niños")
}

method elLiderEs()= niños.max(niño => niño.capacidadAsustar())

method cantidadCaramelosLegion(_cantidadCaramelosLegion){cantidadCaramelosLegion = _cantidadCaramelosLegion}

method cantidadCaramelosLegion()= niños.sum(niño => niño.cantidadCaramelos)

method capacidadAsustarLegion()= niños.sum(niño =>niño.capacidadAsustar())

method intentarAsustarA(adulto)= {
	if(adulto.toleranciaA() < self.capacidadAsustarLegion())
		self.elLiderEs().cantidadCaramelos += adulto.entregaCaramelosA()
} 

#UserException inherits Exception


#Barrio

const niños =[]

method niñosOrdenadosXCantidadCaramelos()= niños.sortedBy(n1, n2 => n1.cantidadCaramelos() > n2.cantidadCaramelos())

const niñosOrdenados= self.niñosOrdenadosXCantidadCaramelos()

method LosPrimeros3niñosConMasCaramelos()= niñosOrdenados.taken(3)

