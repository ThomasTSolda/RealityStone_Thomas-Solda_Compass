Before do 
    puts 'Estou executando antes de cada cenario'
end

After do |scenario|
    puts 'Estou executando depois'
    puts scenario.failed?
end

After ('@limpar_banco') do 
    puts 'EXECUTANDO DEPOIS DO CENARIO Carregar página do Google CENARIO 2'
end