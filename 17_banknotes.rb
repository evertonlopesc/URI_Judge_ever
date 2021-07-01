#  URI Online Judge | 1018
# Cédulas

# Adaptado por Neilor Tonin, URI Brasil
# Timelimit: 1

# Leia um valor inteiro. A seguir, calcule o menor número de notas possíveis
# (cédulas) no qual o valor pode ser decomposto. As notas consideradas são
# de 100, 50, 20, 10, 5, 2 e 1. A seguir mostre o valor lido e a relação de
# notas necessárias.

# Entrada
# O arquivo de entrada contém um valor inteiro N (0 < N < 1000000).

# Saída
# Imprima o valor lido e, em seguida, a quantidade mínima de notas de cada
# tipo necessárias, conforme o exemplo fornecido. Não esqueça de imprimir o
# fim de linha após cada linha, caso contrário seu programa apresentará a
# mensagem: “Presentation Error”.

# Exemplo de Entrada 	Exemplo de Saída
# 576                 576
#                     5 nota(s) de R$ 100,00
#                     1 nota(s) de R$ 50,00
#                     1 nota(s) de R$ 20,00
#                     0 nota(s) de R$ 10,00
#                     1 nota(s) de R$ 5,00
#                     0 nota(s) de R$ 2,00
#                     1 nota(s) de R$ 1,00

# 11257               11257
#                     112 nota(s) de R$ 100,00
#                     1 nota(s) de R$ 50,00
#                     0 nota(s) de R$ 20,00
#                     0 nota(s) de R$ 10,00
#                     1 nota(s) de R$ 5,00
#                     1 nota(s) de R$ 2,00
#                     0 nota(s) de R$ 1,00

# MEU PROJETO
MAX = 1_000_000
min = 0
BANK_NOTES = [100, 50, 20, 10, 5, 2, 1].freeze
count_notes = {
  '100': 0, '50': 0, '20': 0, '10': 0, '5': 0, '2': 0, '1': 0
}

data_collect = gets.to_i
puts data_collect

while data_collect > min
  case data_collect
  when BANK_NOTES[0]..MAX
    data_collect -= BANK_NOTES[0]
    count_notes[:'100'] += 1

  when BANK_NOTES[1]..BANK_NOTES[0]
    data_collect -= BANK_NOTES[1]
    count_notes[:'50'] += 1

  when BANK_NOTES[2]..BANK_NOTES[1]
    data_collect -= BANK_NOTES[2]
    count_notes[:'20'] += 1

  when BANK_NOTES[3]..BANK_NOTES[2]
    data_collect -= BANK_NOTES[3]
    count_notes[:'10'] += 1

  when BANK_NOTES[4]..BANK_NOTES[3]
    data_collect -= BANK_NOTES[4]
    count_notes[:'5'] += 1

  when BANK_NOTES[5]..BANK_NOTES[4]
    data_collect -= BANK_NOTES[5]
    count_notes[:'2'] += 1

  when BANK_NOTES[6]..BANK_NOTES[5]
    data_collect -= BANK_NOTES[6]
    count_notes[:'1'] += 1

  else
    puts 'Not found!'
    break
  end
end

count_notes.each do |key, index|
  puts "#{index} nota(s) de R$ #{key},00"
end

# PROJETO CLAVIUS TALES
# class Execution
#   BANK_NOTES = [100, 50, 20, 10, 5, 2, 1].freeze
#   MAX = 1_000_000

#   def call
#     request_amount
#     if invalid_amount?
#       puts 'Valor inválido.'
#     else
#       calculate
#       show_notes
#     end
#   end

#   private

#   attr_reader :amount

#   def request_amount
#     @amount = gets.to_i
#   end

#   def invalid_amount?
#     amount.negative? || amount > MAX
#   end

#   def calculate
#     rest = amount
#     while rest.positive?
#       note = notes_counting.keys.find { _1 <= rest }
#       notes_counting[note] += 1
#       rest -= note
#     end
#   end

#   def notes_counting
#     @notes_counting ||= BANK_NOTES.map { [_1, 0] }.to_h
#   end

#   def show_notes
#     notes_counting.each do |note, quantity|
#       puts "#{quantity} nota(s) de R$#{note},00"
#     end
#   end
# end

# Execution.new.call
