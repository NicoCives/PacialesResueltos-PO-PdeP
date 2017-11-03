#Ni�o inherits LegionNi�os

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

method ni�oConMasDe15Caramelos()= self.cantidadCaramelos > 15

method ni�oConMasDe10Caramelos()= self.cantidadCaramelos > 10

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

const ni�osQueLoAsustaron= []

const ni�osConMasDe15Caramelos = self.ni�osConMasDe15Caramelos()

method toleranciaA()= 10 * self.cantidadNi�osConMasDe15Caramelos()

method cantidadNi�osConMasDe15Caramelos()= ni�osQueLoAsustaron.count(ni�os => ni�os.)

method ni�osConMasDe15Caramelos()= ni�osQueLeAsustaron.filter(ni�os => ni�os.ni�oConMasDe15Caramelos())

method entregaCaramelosA()= self.toleranciaA() / 2

#AdultoComun

override method entregaCaramelosA()= super()

#AdultoAbuelo

override method entregaCaramelosA()= super() / 2

#AdultoNecio

override method entregaCaramelosA()= 0


#LegionNi�os

const ni�os= []

const ni�osConjunto= #{}

method conjuntoSinRepetir()= ni�osConjunto.asSet()

method cantidadDeNi�os()= conjuntoSinRepetir().size()

method conversionConjunto()= ni�os.conjuntoSinRepetir().sortedBy(condicion)

method crearLegion(){
	if(self.cantidadDeNi�os > 2)
		ni�os= self.conversionConjunto()
	else
		throw new UserException ("El conjunto no posee al menos 2 ni�os")
}

method elLiderEs()= ni�os.max(ni�o => ni�o.capacidadAsustar())

method cantidadCaramelosLegion(_cantidadCaramelosLegion){cantidadCaramelosLegion = _cantidadCaramelosLegion}

method cantidadCaramelosLegion()= ni�os.sum(ni�o => ni�o.cantidadCaramelos)

method capacidadAsustarLegion()= ni�os.sum(ni�o =>ni�o.capacidadAsustar())

method intentarAsustarA(adulto)= {
	if(adulto.toleranciaA() < self.capacidadAsustarLegion())
		self.elLiderEs().cantidadCaramelos += adulto.entregaCaramelosA()
} 

#UserException inherits Exception


#Barrio

const ni�os =[]

method ni�osOrdenadosXCantidadCaramelos()= ni�os.sortedBy(n1, n2 => n1.cantidadCaramelos() > n2.cantidadCaramelos())

const ni�osOrdenados= self.ni�osOrdenadosXCantidadCaramelos()

method LosPrimeros3ni�osConMasCaramelos()= ni�osOrdenados.taken(3)

