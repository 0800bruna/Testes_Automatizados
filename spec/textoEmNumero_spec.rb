describe "Suite RSPec" do

    it "Caso de teste" do
        #Arrange
        texto = "1"

        #Act
        numero = texto.to_i

        #Assert
        expect(numero).to eql 1
    end

end