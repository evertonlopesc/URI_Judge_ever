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

max = 1_000_000
min = 0
banknotes = [100, 50, 20, 10, 5, 2, 1]
count_notes = {
  '100': 0, '50': 0, '20': 0, '10': 0, '5': 0, '2': 0, '1': 0
}

data_collect = gets.to_i
puts data_collect

while data_collect > min
  case data_collect
  when banknotes[0]..max
    data_collect -= banknotes[0]
    count_notes[:'100'] += 1

  when banknotes[1]..banknotes[0]
    data_collect -= banknotes[1]
    count_notes[:'50'] += 1

  when banknotes[2]..banknotes[1]
    data_collect -= banknotes[2]
    count_notes[:'20'] += 1

  when banknotes[3]..banknotes[2]
    data_collect -= banknotes[3]
    count_notes[:'10'] += 1

  when banknotes[4]..banknotes[3]
    data_collect -= banknotes[4]
    count_notes[:'5'] += 1

  when banknotes[5]..banknotes[4]
    data_collect -= banknotes[5]
    count_notes[:'2'] += 1

  when banknotes[6]..banknotes[5]
    data_collect -= banknotes[6]
    count_notes[:'1'] += 1

  else
    puts 'Not found!'
    break
  end
end

count_notes.each do |key, index|
  puts "#{index} nota(s) de R$ #{key},00"
end
