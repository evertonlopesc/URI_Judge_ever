# URI Online Judge | 1012
# Área

# Adaptado por Neilor Tonin, URI Brasil
# Timelimit: 1

# Escreva um programa que leia três valores com ponto flutuante de dupla precisão: A, B e C.
# Em seguida, calcule e mostre:
# a) a área do triângulo retângulo que tem A por base e C por altura.
# b) a área do círculo de raio C. (pi = 3.14159)
# c) a área do trapézio que tem A e B por bases e C por altura.
# d) a área do quadrado que tem lado B.
# e) a área do retângulo que tem lados A e B.

# Entrada
# O arquivo de entrada contém três valores com um dígito após o ponto decimal.

# Saída
# O arquivo de saída deverá conter 5 linhas de dados. Cada linha corresponde a uma das áreas
# descritas acima, sempre com mensagem correspondente e um espaço entre os dois pontos e o
# valor. O valor calculado deve ser apresentado com 3 dígitos após o ponto decimal.

# Exemplos de Entrada 	Exemplos de Saída

# 3.0 4.0 5.2	          TRIANGULO: 7.800
#                       CIRCULO: 84.949
#                       TRAPEZIO: 18.200
#                       QUADRADO: 16.000
#                       RETANGULO: 12.000

# 12.7 10.4 15.2        TRIANGULO: 96.520
#                       CIRCULO: 725.833
#                       TRAPEZIO: 175.560
#                       QUADRADO: 108.160
#                       RETANGULO: 132.080

def printArea(format, area)
  puts format("#{format}: %.3f", area)
end

def triangle(base, height)
  area = (base * height) / 2
  printArea('TRIANGULO', area)
end

def circle(rain)
  pi = 3.14159
  area = pi * (rain**2)

  printArea('CIRCULO', area)
end

def trapeze(baseH, baseL, height)
  area = ((baseH + baseL) * height) / 2

  printArea('TRAPEZIO', area)
end

def square(side)
  area = side**2

  printArea('QUADRADO', area)
end

def rectangle(base, height)
  area = base * height

  printArea('RETANGULO', area)
end

begin
  numbers = gets.split(' ')
  raise StandardError, 'Expected three numbers' if numbers.length != 3

  numbers.map! { |index| index.to_f }

  triangle(numbers[0], numbers[2])
  circle(numbers[2])
  trapeze(numbers[0], numbers[1], numbers[2])
  square(numbers[1])
  rectangle(numbers[0], numbers[1])
rescue StandardError => e
  puts e.message
end
