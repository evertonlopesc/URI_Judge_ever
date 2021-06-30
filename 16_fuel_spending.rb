#  URI Online Judge | 1017
# Gasto de Combustível

# Adaptado por Neilor Tonin, URI Brasil
# Timelimit: 1

# Joaozinho quer calcular e mostrar a quantidade de litros de combustível
# gastos em uma viagem, ao utilizar um automóvel que faz 12 KM/L.
# Para isso, ele gostaria que você o auxiliasse através de um simples programa.
# Para efetuar o cálculo, deve-se fornecer o tempo gasto na viagem (em horas)
# e a velocidade média durante a mesma (em km/h).
# Assim, pode-se obter distância percorrida e, em seguida, calcular quantos
# litros seriam necessários. Mostre o valor com 3 casas decimais após o ponto.

# Entrada
# O arquivo de entrada contém dois inteiros.
# O primeiro é o tempo gasto na viagem (em horas) e o segundo é a velocidade
# média durante a mesma (em km/h).

# Saída
# Imprima a quantidade de litros necessária para realizar a viagem,
# com três dígitos após o ponto decimal.

# Exemplo de Entrada 	Exemplo de Saída
# 10
# 85                  70.833

# 2
# 92                  15.333

# 22
# 67                  122.833

def liter_quantity_per_trip(time, km_h)
  car_km_per_liter = 12.0

  (time.to_i * km_h.to_i) / car_km_per_liter
end

def init
  time_trip = gets
  raise 'expected integer, please try again.' unless time_trip =~ /[0-9]/

  km_hour = gets
  raise 'expected integer, please try again.' unless km_hour =~ /[0-9]/

  total_liter = liter_quantity_per_trip(time_trip, km_hour)

  puts format('%.3f', total_liter)
rescue StandardError => e
  puts "Error: #{e.message}"
end

init
