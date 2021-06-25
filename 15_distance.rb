# URI Online Judge | 1016
# Distância

# Adaptado por Neilor Tonin, URI Brasil
# Timelimit: 1

# Dois carros (X e Y) partem em uma mesma direção. O carro X sai com velocidade
# constante de 60 Km/h e o carro Y sai com velocidade constante de 90 Km/h.

# Em uma hora (60 minutos) o carro Y consegue se distanciar 30 quilômetros do carro X,
# ou seja, consegue se afastar um quilômetro a cada 2 minutos.

# Leia a distância (em Km) e calcule quanto tempo leva (em minutos) para o carro Y
# tomar essa distância do outro carro.

# Entrada
# O arquivo de entrada contém um número inteiro.

# Saída
# Imprima o tempo necessário seguido da mensagem "minutos".

# Exemplo de Entrada 	Exemplo de Saída
# 30                  60 minutos
# 110                 220 minutos
# 7                   14 minutos

def data_collect
  distance = gets
  raise 'expected to get an integer' unless distance =~ /^[0-9]/

  distance.to_i
rescue StandardError => e
  puts "Error message: #{e.message}"

  puts "\n\nOnly numbers, please. Try again!\n\n"
  retry
end

def init
  but_fast = 2
  distance = data_collect

  time = distance * but_fast
  raise 'expected integer 2p' unless time.instance_of?(Integer)

  puts format('%d minutos', time)
  puts time.class
rescue StandardError => e
  puts "Error message: #{e.message}"
end

init
