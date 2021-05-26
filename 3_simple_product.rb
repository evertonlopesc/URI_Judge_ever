# Leia dois valores inteiros. 
# A seguir, calcule o produto entre estes dois valores e 
# atribua esta operação à variável PROD. 
# A seguir mostre a variável PROD com mensagem correspondente.   

# Entrada
# O arquivo de entrada contém 2 valores inteiros.

# Saída
# Imprima a mensagem "PROD" e a variável PROD conforme exemplo abaixo, 
# com um espaço em branco antes e depois da igualdade. 
# Não esqueça de imprimir o fim de linha após o produto, 
# caso contrário seu programa apresentará a mensagem: “Presentation Error”.

# Exemplos de Entrada 	Exemplos de Saída
# 3
# 9                     PROD = 27

# -30
# 10                    PROD = -300

# 0
# 9                     PROD = 0

number_one = gets.to_i
number_two = gets.to_i

prod = number_one * number_two

puts "PROD = #{prod}"
