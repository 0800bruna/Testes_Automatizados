# classe mãe

class FerramentasDeEscrita
    attr_accessor :cor, :ponta, :tampa, :botao, :preco, :marca, :pressaoEscrita
    def initialize(cor, ponta, tampa, botao, preco, marca)
		self.cor = cor
		self.ponta = ponta
		self.tampa = tampa
		self.botao = botao
		self.preco = preco
		self.marca = marca
		self.pressaoEscrita = 0
    end

    #Getters
        def getCor()
            return self.cor
        end

        def getPonta()
            return self.ponta
        end

        def getTampa()
            return self.tampa
        end

        def getBotao()
            return self.botao
        end

        def getPreco()
            return self.preco
        end

        def getMarca()
            return self.marca
        end

        def getPressaoEscrita()
            return self.pressaoEscrita
        end
    #end

    #Setters
        def setCor(cor)
            self.cor = cor
        end

        def setPonta(ponta)
            self.ponta = ponta
        end

        def setTampa(tampa)
            self.tampa = tampa
        end

        def setBotao(botao)
            self.botao = botao
        end

        def setPreco(preco)
            self.preco = preco
        end

        def setMarca(marca)
            self.marca = marca
        end

        def setPressaoEscrita(pressaoEscrita)
            self.pressaoEscrita = pressaoEscrita
        end
    #end

    def escrever(texto)
        if (getPressaoEscrita() < 10 && getPressaoEscrita() > 5)
            return texto.upcase()
        elsif (getPressaoEscrita() <= 5 && getPressaoEscrita() > 0)
            return texto
        end
    end

end