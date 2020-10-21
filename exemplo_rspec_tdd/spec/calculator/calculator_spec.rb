# describe: descrever os testes; pode ser um texto ou uma classe; 
    # texto - ele não procura a classe por padrão
    # classe - ele procura a classe dentro da pasta lib e precisa da require na class.

# it, specify ou example: è usado para informar para qual teste será executado naquele momento. (Nomeando os testes)
 
require 'calculator'

describe Calculator do
    it 'use sum method for 2 numbers' do 
        calc = Calculator.new 
        result = calc.sum(5,7)
        expect(result).to eq(12) # resultado esperado pelo teste
    end 

    specify 'use sum method for 2 numbers with negative numbers' do 
        calc = Calculator.new 
        result = calc.sum(-5,7)
        expect(result).to eq(2) # resultado esperado pelo teste
    end 
end
