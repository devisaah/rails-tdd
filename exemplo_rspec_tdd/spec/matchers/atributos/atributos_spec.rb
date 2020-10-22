require 'pessoa'

describe "Atributos" do
    # starting_with or a_string_starting_with
    # be or a_value
    it "have_attributes" do
        pessoa = Pessoa.new 
        pessoa.nome = "Isadora"
        pessoa.idade = 27

        expect(pessoa).to have_attributes(nome: "Isadora", idade: 27)
        expect(pessoa).to have_attributes(nome: starting_with("I"), idade: (be >= 27))
    end
end
