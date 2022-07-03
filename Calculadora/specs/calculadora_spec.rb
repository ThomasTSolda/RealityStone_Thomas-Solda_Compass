require 'rspec'
require_relative '../logic/Calculadora'

describe(Calculadora) do
    calculadora = Calculadora.new

#--------------------- SOMA --------------------------#
    it ('Deve somar dois numeros inteiros positivos') do
        expect(calculadora.soma(20, 5)).to eq 25
    end

    it ('Deve somar dois numeros inteiros negativos') do
        expect(calculadora.soma(-20, -5)).to eq -25
    end

    it ('Deve somar um numero postivo e outro negativo') do
        expect(calculadora.soma(-20, 5)).to eq -15
    end

    it ('Deve somar um numero inteiro com 0') do
        expect(calculadora.soma(20, 0)).to eq 20
    end

#_______________________ SUBTRAIR ______________________#
    it ('Deve subtrair um numero negativo e um positivo') do
        expect(calculadora.subtrair(-20, 5)).to eq -25
    end

    it ('Deve subtrair dois numeros inteiros negativos') do
        expect(calculadora.subtrair(-20, -5)).to eq -15
    end

    it ('Deve subtrair dois numeros inteiros positivos') do
        expect(calculadora.subtrair(20, 5)).to eq 15
    end

    it ('Deve subtrarir um numero inteiro inteiro com 0') do
        expect(calculadora.subtrair(20, 0)).to eq 20
    end

#---------------------- MULTIPLICAR ---------------------#
    it ('Deve multiplicar dois numeros positivos') do
        expect(calculadora.multiplicar(20, 5)).to eq 100
    end

    it ('Deve multiplicar dois numeros negativos') do
        expect(calculadora.multiplicar(-20, -5)).to eq 100
    end

    it ('Deve multiplicar um numero positivo e outro negativo') do
        expect(calculadora.multiplicar(20, -5)).to eq -100
    end

    it ('Deve multiplicar um numero inteiro com 0') do 
        expect(calculadora.multiplicar(20, 0)).to eq 0
    end

#_______________________ DIVIDIR _________________________#
    it ('Deve dividir dois numeros positivos') do
        expect(calculadora.dividir(20, 5)).to eq 4
    end

    it ('Deve dividir dois numeros negativos') do
        expect(calculadora.dividir(-20, -5)).to eq 4
    end

    it ('Deve dividir um numero negativo e outro positivo') do
        expect(calculadora.dividir(-20, 5)).to eq -4
    end
    
    it ('Deve dividr um numero inteiro com 0') do
        expect(calculadora.dividir(-20, 0)).to eq "Não é possível dividir por 0!"
    end

#----------------------- POTENCIA -------------------------#
    it ('Deve elevar dois numeros positivos') do
        expect(calculadora.potencia(20, 2)).to eq 400
    end

    it ('Deve elevar dois numeros negativos') do
        expect(calculadora.potencia(-20, -2)).to eq 0.0025
    end

    it ('Deve elevar um numero positivo e o outro negativo') do
        expect(calculadora.potencia(-20, 2)).to eq 400
    end

    it ('Deve elevar um numero inteiro com 0') do
        expect(calculadora.potencia(20, 0)).to eq 1
    end

#________________________ RAIZ ____________________________#
    it ('Deve radiciar um numeros positivos') do
        expect(calculadora.raiz(25)).to eq 5
    end

    it ('Deve radiciar um numero negativo') do
        expect(calculadora.raiz(-25)).to eq 'Não é possível calcular a raiz de um número negativo!'
    end

    it ('Deve radiciar com 0') do
        expect(calculadora.raiz(0)).to eq 0
    end
end
