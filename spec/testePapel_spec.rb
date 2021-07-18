require_relative "./FerramentasDeEscrita/Papel.rb"
require_relative "./FerramentasDeEscrita/Canetas.rb"
require_relative "./FerramentasDeEscrita/Lapiseiras.rb"

describe Papel do

    before(:each) do
        @caneta1 = Canetas.new("roxa", 1.0, true, false, 10.50, "uniball", false)
        @lapiseira1 = Lapiseiras.new("rosa", 0.5, false, true, 13.70, "pentel")
    end

    it "Caso de teste 1: Validando área do papel" do
        papel1 = Papel.new("creme", "canson", 10, 10, 13.50)
        
        expect(papel1.getArea()).to eql 100
    end

    it "Caso de teste 2: Validando casos inválidos da área do papel - Lado zero" do
        papel1 = Papel.new("creme", "canson", 0, 10, 13.50)

        expect(papel1.getArea()).to eql "Área Inválida"
    end

    it "Caso de teste 3: Validando casos inválidos da área do papel - Altura zero" do
        papel1 = Papel.new("creme", "canson", 10, 0, 13.50)
        
        expect(papel1.getArea()).to eql "Área Inválida"
    end

    it "Caso de teste 4: Validando a escrita no papel" do
        papel1 = Papel.new("creme", "canson", 10, 10, 13.50)
        @lapiseira1.escrever(papel1, "testando =)", 4)

        expect(papel1.getTextoContido()).to eql "testando =)"
    end

    #Capacidade = (2*area)caracteres
    # it "Caso de teste 5: Validando a capacidade de escrita dada a área 1 (0 caracteres)" do
    #     papel1 = Papel.new("creme", "canson", 1, 1, 13.50)
    #     @lapiseira1.escrever(papel1, "", 4)

    #     expect(papel1.getTextoContido()).to eql 1
    # end

    # it "Caso de teste 6: Validando a capacidade de escrita dada a área 1 (2 caracteres)" do
    #     papel1 = Papel.new("creme", "canson", 1, 1, 13.50)
    #     @lapiseira1.escrever(papel1, "ab", 4)

    #     expect(papel1.getTextoContido()).to eql "ab"
    # end

    # it "Caso de teste 7: Validando a capacidade de escrita dada a área 1 (3 caracteres)" do
    #     papel1 = Papel.new("creme", "canson", 1, 1, 13.50)
    #     @lapiseira1.escrever(papel1, "abc", 4)

    #     expect(papel1.getTextoContido()).to eql "abc"
    #     expect(papel1.getCondicao()).to eql "Usado"
    # end

    it "Caso de teste 8: Validando a condição do papel - Novo" do
        papel1 = Papel.new("creme", "canson", 10, 10, 13.50)

        expect(papel1.getCondicao()).to eql "Novo"
    end

    # Após escrever o papel deve se tornar "usado"
    it "Caso de teste 9: Validando a condição do papel - Usado" do
        papel1 = Papel.new("creme", "canson", 10, 10, 13.50)
        @lapiseira1.escrever(papel1, "testando =)", 4)

        expect(papel1.getCondicao()).to eql "Usado"
    end
end