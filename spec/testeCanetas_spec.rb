require_relative "./FerramentasDeEscrita/Canetas.rb"

describe Canetas do

    before(:each) do
        @caneta1 = Canetas.new("roxa", 1.0, true, false, 10.50, "uniball", false)
    end

    it "Caso de teste 1: Validando atributos do construtor da caneta" do
        #Assert
        expect(@caneta1.getCor()).to eql "roxa"
        expect(@caneta1.getPonta()).to eql 1.0
        expect(@caneta1.getTampa()).to eql true
        expect(@caneta1.getBotao()).to eql false
        expect(@caneta1.getPreco()).to eql 10.50
        expect(@caneta1.getMarca()).to eql "uniball"
        expect(@caneta1.getTinteiro()).to eql false
        expect(@caneta1.getPressaoEscrita()).to eql 0
    end

    it "Caso de teste 2: Validando escrita fraca da caneta" do
        #Act
        coisaEscrita = @caneta1.escrever("abobrinha",3)

        #Assert
        expect(coisaEscrita).to eql "abobrinha"
        expect(@caneta1.getPressaoEscrita()).to eql 0
    end

    it "Caso de teste 3: Validando escrita forte da caneta" do
        #Act
        coisaEscrita = @caneta1.escrever("abobrinha",7)

        #Assert
        expect(coisaEscrita).to eql "ABOBRINHA"
        expect(@caneta1.getPressaoEscrita()).to eql 0
    end
end