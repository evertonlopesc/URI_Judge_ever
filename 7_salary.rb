# URI Online Judge | 1008
# Salário

# Adaptado por Neilor Tonin, URI Brasil
# Timelimit: 1

# Escreva um programa que leia o número de um funcionário, seu número de horas trabalhadas,
# o valor que recebe por hora e calcula o salário desse funcionário.
# A seguir, mostre o número e o salário do funcionário, com duas casas decimais.

# Entrada
# O arquivo de entrada contém 2 números inteiros e 1 número com duas casas decimais,
# representando o número do funcionário, quantidade de horas trabalhadas
# e o valor que o funcionário recebe por hora trabalhada, respectivamente.

# Saída
# Imprima o número e o salário do funcionário, conforme exemplo fornecido,
# com um espaço em branco antes e depois da igualdade. No caso do salário,
# também deve haver um espaço em branco após o $.

# Exemplos de Entrada 	Exemplos de Saída
# 25
# 100                   NUMBER = 25
# 5.50                  SALARY = U$ 550.00

# 1
# 200                   NUMBER = 1
# 20.50                 SALARY = U$ 4100.00

# 6
# 145                   NUMBER = 6
# 15.55                 SALARY = U$ 2254.75

# ler o numero de um funcionários | integer
# ler o número de horas trabalhadas | integer
# ler o valor por hora | float
# calcular o salário
# Imprimir o número do funcionários
# e o Salário dele

registration = gets.to_i
worked_hours = gets.to_i
hourly_wage = gets.to_f

wage = worked_hours * hourly_wage

puts "NUMBER = #{registration}"
puts format('SALARY = U$ %.2f', wage)
