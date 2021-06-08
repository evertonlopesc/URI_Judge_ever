# URI Online Judge | 1013
# O Maior

# Adaptado por Neilor Tonin, URI Brasil
# Timelimit: 1

# Faça um programa que leia três valores e apresente o maior dos três valores lidos seguido da
# mensagem “eh o maior”. Utilize a fórmula:

# Obs.: a fórmula apenas calcula o maior entre os dois primeiros (a e b).
# Um segundo passo, portanto é necessário para chegar no resultado esperado.

# Entrada
# O arquivo de entrada contém três valores inteiros.

# Saída
# Imprima o maior dos três valores seguido por um espaço e a mensagem "eh o maior".

# Exemplos de Entrada 	Exemplos de Saída
# 7 14 106              106 eh o maior

# 217 14 6              217 eh o maior

def heighest_value(values)
  bigger = -999

  values.each do |index|
    bigger = index if bigger < index
  end

  puts "#{bigger} eh o maior"
end

begin
  numbers = gets.split(' ')
  numbers.map! { |index| index.to_i }
  raise StandardError, 'Expected three numbers' if numbers.length != 3

  heighest_value(numbers)
rescue StandardError => e
  puts e.message
end
