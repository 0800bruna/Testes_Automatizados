require_relative "./FerramentasDeEscrita.rb"

class Canetas < FerramentasDeEscrita
	attr_accessor :cor, :ponta, :tampa, :botao, :preco, :marca, :tinteiro
	def initialize(cor, ponta, tampa, botao, preco, marca, tinteiro)
    	super(cor,ponta,tampa,botao,preco,marca)
		self.tinteiro = tinteiro
	end

	def getTinteiro()
		return self.tinteiro
	end

	def setTinteiro(tinteiro)
		self.tinteiro = tinteiro
	end

    def jorrarTinta()
		puts "Ops! Sujou tudo de tinta x("
    end

	def escrever(texto, pressaoAtual)
        if (pressaoAtual > 10)
            jorrarTinta()
        elsif (pressaoAtual < 10)
            setPressaoEscrita(pressaoAtual)
			textoTemporario = super(texto)
        end
		setPressaoEscrita(0)
		return textoTemporario
    end

end