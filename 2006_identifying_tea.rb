# URI Online Judge | 2006
# Identificando o Chá

# Por Inês Kereki UY Uruguay

# Degustação de chá às escuras é a habilidade de identificar um chá usando apenas
# seus sentidos do olfato e paladar.

# Isto faz parte da Competição Ideal de Consumidores de Chá Puro (da sigla em inglês ICPC),
# que um programa de TV local está organizando. Durante o show,
# um bule de chá completo é preparado e são entregues uma xícara de chá
# para cada um dos cinco competidores. Os participantes devem cheirar,
# saborear e avaliar a amostra, de modo a identificar o tipo de chá, que pode ser:
# (1) o chá branco; (2) chá verde; (3) chá preto; ou (4) chá de ervas.
# No final, as respostas são verificadas para determinar o número de suposições corretas.

# Dado o tipo de chá real e as respostas fornecidas,
# determinar o número de participantes que receberam a resposta correta.

# Entrada
# A primeira linha contém um inteiro T representando o tipo de chá (1 ≤ T ≤ 4).
# A segunda linha contém cinco inteiros A, B, C, D e E,
# que indica a resposta dada por cada competidor (1 ≤ A, B, C, D, E ≤ 4).

# Saída
# A saída contém um inteiro representando o número de concorrentes que
# obtiveram a resposta correta.

# Exemplos de Entrada 	Exemplos de Saída
# 1
# 1 2 3 2 1             2

# 3
# 4 1 1 2 1             0

# FIRST SOLUTIONS <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

# count = 0
# tea = gets.to_i
# assumptions = gets.split
#
# assumptions.map! { |integer| integer.to_i }
#
# assumptions.each do |value|
#  count += 1 if value == tea
# end
#
# puts count

# SECOND SOLUTIONS <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

def what_tea
  rand 1..5
end

class Candidate
  attr_accessor :name
  attr_reader :choose

  def initialize(name)
    @name = name
    @choose = choose_random
  end

  def show
    puts "\nO #{@name} escolheu o chá de número: #{@choose}"
  end

  private

  def choose_random
    rand 1..5
  end
end

def winner(tea, candidate)
  puts "O sabor do chá é de número: #{tea}"
  candidate.each do |cand|
    cand.show
    if tea == cand.choose
      puts "O candidato #{cand.name} está classificado!!!"
    else
      puts "Sorte na próxima #{cand.name}."
    end
  end
end

tea = what_tea
canvass_votes = []

john = Candidate.new('João')
canvass_votes.push john

maria = Candidate.new('Maria')
canvass_votes.push maria

anastasia = Candidate.new('Anastacia')
canvass_votes.push anastasia

valti_disnei = Candidate.new('Valti Disne')
canvass_votes.push valti_disnei

astrogilda = Candidate.new('Astrogilda')
canvass_votes.push astrogilda

winner(tea, canvass_votes)
