class Calculadora

    def soma(n1, n2)
        n1 + n2
    end

    def subtrair(n1, n2)
        n1 - n2
    end

    def multiplicar(n1, n2)
        n1 * n2
    end

    def dividir(n1, n2)
        if n2 == 0
            return 'Não é possível dividir por 0!'
    end
        n1 / n2
    end

    def potencia(n1, n2)
        n1 ** n2
    end

    def raiz(n1)
        if n1 < 0
            return 'Não é possível calcular a raiz de um número negativo!'
        end
        Math.sqrt(n1)
    end
end