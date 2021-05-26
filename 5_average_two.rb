# Leia 3 valores, no caso, variáveis A, B e C, que são as três notas de um aluno. 
# A seguir, calcule a média do aluno, sabendo que a nota A tem peso 2, 
# a nota B tem peso 3 e a nota C tem peso 5. 
# Considere que cada nota pode ir de 0 até 10.0, sempre com uma casa decimal.

# Entrada  
# O arquivo de entrada contém 3 valores com uma casa decimal, de dupla precisão (double).

# Saída
# Imprima a mensagem "MEDIA" e a média do aluno conforme exemplo abaixo, com 1 dígito após o ponto decimal e com um espaço em branco antes e depois da igualdade. Assim como todos os problemas, não esqueça de imprimir o fim de linha após o resultado, caso contrário, você receberá "Presentation Error".
# Exemplos de Entrada 	Exemplos de Saída
# 5.0
# 6.0
# 7.0
# MEDIA = 6.3

# 5.0
# 10.0
# 10.0
# MEDIA = 9.0

# 10.0
# 10.0
# 5.0
# MEDIA = 7.5

# Solution 1 ###################################################################################
#
# a = gets.to_f
# b = gets.to_f
# c = gets.to_f
# 
# weight = [2, 3, 5]
# weight_total = weight[0] + weight[1] + weight[2]
# 
# average = ((a * weight[0]) + (b * weight[1]) + (c * weight[2])) / weight_total
# 
# puts  "MEDIA = %.1f" % [average]
# 
# Solution 2 ###################################################################################
# 
# notes = Array.new
# average = 0
# 
# 3.times { |index| notes.push gets.chomp.to_f }
# 
# weight = [2, 3, 5]
# weight_total = weight[0] + weight[1] + weight[2]
# 
# 3.times { |index| notes[index] *= weight[index] }
# 
# 3.times { |index| average += notes[index] }
# 
# average = average / weight_total
# 
# puts  "MEDIA = %.1f" % [average]
# 
# Solution 3 ###################################################################################

class AverageTwo
  attr_accessor :name, :first_note, :second_note, :third_note
  attr_reader :average
  def initialize
    @name = name
    @first_note = first_note
    @second_note = second_note
    @third_note = third_note
    @average = average
  end

  def show_average
    calculate_grade
    puts  "MEDIA = %.1f" % [average]
  end

  private

  def calculate_grade
    notes = [@first_note, @second_note, @third_note]
    weight = [2, 3, 5]
    weight_total = weight[0] + weight[1] + weight[2]

    product_notes = product_notes_weight(notes, weight)
    
    @average = product_notes / weight_total   
  end

  def product_notes_weight (notes, weights)
    result = (notes[0] * weights[0]) + (notes[1] * weights[1]) + (notes[2] * weights[2])
  end
end

student = AverageTwo.new

puts 'Informe o nome do aluno e em seguida suas notas.'
print 'Nome: '
student.name = gets.chomp.to_s
print '1º Nota: '
student.first_note =  gets.chomp.to_f
print '2º Nota: '
student.second_note =  gets.chomp.to_f
print '3º Nota: '
student.third_note =  gets.chomp.to_f

student.show_average
