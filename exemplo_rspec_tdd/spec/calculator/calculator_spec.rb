# describe: descrever os testes; pode ser um texto ou uma classe; 
    # texto - ele não procura a classe por padrão
    # classe - ele procura a classe dentro da pasta lib e precisa da require na class.

# it, specify ou example: è usado para informar para qual teste será executado naquele momento. (Nomeando os testes)
 
require 'calculator'

describe Calculator do # or 'Classe Calculadora'

    subject(:calc) { described_class.new() } # or Calculator.new()

    context '#sum' do
        it 'with positive numbers' do 
            result = subject.sum(5,7) 
            expect(result).to eq(12)
        end 

        it 'with negative numbers' do 
            result = calc.sum(-5,-7)
            expect(result).to eq(-12)
        end
        
        it 'with negative and positive numbers' do 
            result = calc.sum(-5,7)
            expect(result).to eq(2)
        end 
    end
end
