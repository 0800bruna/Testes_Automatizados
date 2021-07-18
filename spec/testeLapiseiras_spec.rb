require_relative "./FerramentasDeEscrita/Lapiseiras.rb"
require_relative "./FerramentasDeEscrita/Papel.rb"

describe Lapiseiras do

    it "Caso de teste 1: Validando atributos do construtor da lapiseira" do
        #Arrange
        lapiseira1 = Lapiseiras.new("rosa", 0.5, false, true, 13.70, "pentel")

        #Assert
        expect(lapiseira1.getCor()).to eql "rosa"
        expect(lapiseira1.getPonta()).to eql 0.5
        expect(lapiseira1.getTampa()).to eql false
        expect(lapiseira1.getBotao()).to eql true
        expect(lapiseira1.getPreco()).to eql 13.70
        expect(lapiseira1.getMarca()).to eql "pentel"
        expect(lapiseira1.getPressaoEscrita()).to eql 0
    end

    it "Caso de teste 2: Validando recarga da lapiseira" do
        lapiseira1 = Lapiseiras.new("rosa", 0.5, false, true, 13.70, "pentel")

		lapiseira1.setQntGrafite(4)

        expect(lapiseira1.getQntGrafite()).to eql 4
		expect(lapiseira1.getGrafite()).to eql true
    end

    it "Caso de teste 3: Validando quebrar grafite" do
        lapiseira1 = Lapiseiras.new("rosa", 0.5, false, true, 13.70, "pentel")

		lapiseira1.setQntGrafite(4)
        coisaEscrita = lapiseira1.escrever("abobrinha",13)

        #Assert     
        expect(lapiseira1.getQntGrafite()).to eql 3
		expect(lapiseira1.getGrafite()).to eql true
    end
end