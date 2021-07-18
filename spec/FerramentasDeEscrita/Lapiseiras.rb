require_relative "./FerramentasDeEscrita.rb"
require_relative "./Papel.rb"

class Lapiseiras < FerramentasDeEscrita
	attr_accessor :cor, :ponta, :tampa, :botao, :preco, :marca, :grafite, :qntGrafite
	def initialize(cor, ponta, tampa, botao, preco, marca)
    	super(cor,ponta,tampa,botao,preco,marca)
		setGrafite(false)
		setQntGrafite(0)
	end


	#Getters

		def getGrafite()
			return self.grafite
		end

		def getQntGrafite()
			return self.qntGrafite
		end

	#end

	#Setters

		def setGrafite(grafite)
			self.grafite = grafite
		end

		def setQntGrafite(qntGrafite)
			self.qntGrafite = qntGrafite
			if (qntGrafite > 0)
				setGrafite(true)
			end
		end

	#end

	def escrever(obj_papel, texto, pressaoAtual)
        if (pressaoAtual > 10)
            quebrarGrafite()
        elsif (pressaoAtual < 10)
            setPressaoEscrita(pressaoAtual)
			textoTemporario = super(texto) #Ferramentas.escrever(texto)
        end
		setPressaoEscrita(0)
		obj_papel.setTextoContido(textoTemporario)
    end

	def pegarDaReserva()
		if (getQntGrafite()>0)
			setQntGrafite(getQntGrafite()-1)
		else
			puts "Poxa! Acabaram os grafites =("
		end
	end

	def quebrarGrafite()
		pegarDaReserva()
		puts "Vish! Quebrou o grafite x_x"
	end


end