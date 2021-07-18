require_relative "./Canetas.rb"
require_relative "./Lapiseiras.rb"

class Papel

    attr_accessor :cor, :tipo, :dimLado, :dimAltura, :preco, :condicao, :textoContido
    def initialize(cor, tipo, dimLado, dimAltura, preco)
        setCor(cor)
        setTipo(tipo)
        setDimLado(dimLado)
        setDimAltura(dimAltura)
        setPreco(preco)
        setCondicao("Novo")
        setTextoContido(nil)
    end

    # Getters

        def getCor
            return cor
        end

        def getTipo
            return tipo
        end

        def getDimLado
            return dimLado
        end

        def getDimAltura
            return dimAltura
        end

        def getPreco
            return preco
        end

        def getCondicao
            return condicao
        end

        def getTextoContido
            return textoContido
        end
    # end

    #Setters

        def setCor(cor)
            self.cor = cor
        end

        def setTipo(tipo)
            self.tipo = tipo
        end

        def setDimLado(dimLado)
            self.dimLado = dimLado
        end

        def setDimAltura(dimAltura)
            self.dimAltura = dimAltura
        end

        def setPreco(preco)
            self.preco = preco

        end

        def setCondicao(condicao)
            self.condicao = condicao

        end

        def setTextoContido(textoContido)
            self.textoContido = textoContido
            if (getTextoContido()!=nil)
                setCondicao("Usado")
            end
        end

    #end

    def getArea()
        a = getDimLado()*getDimAltura()
        if (a==0)
            return "Área Inválida"
        else
            return a
        end
    end

end