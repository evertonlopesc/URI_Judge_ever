# URI Online Judge | 1015
# Distância Entre Dois Pontos

# Adaptado por Neilor Tonin, URI Brasil
# Timelimit: 1

# Leia os quatro valores correspondentes aos eixos x e y de dois pontos
# quaisquer no plano, p1(x1,y1) e p2(x2,y2) e calcule a distância entre eles,
# mostrando 4 casas decimais após a vírgula, segundo a fórmula:
# Distancia = Raiz_Quadrada[ (x2 - x1)² + (y2 - y1)² ]

# Entrada
# O arquivo de entrada contém duas linhas de dados. A primeira linha contém
# dois valores de ponto flutuante: x1 y1 e a segunda linha contém dois valores
# de ponto flutuante x2 y2.

# Saída
# Calcule e imprima o valor da distância segundo a fórmula fornecida,
# com 4 casas após o ponto decimal.

# Exemplo de Entrada 	Exemplo de Saída
# 1.0 7.0
# 5.0 9.0             4.4721

# -2.5 0.4
# 12.1 7.3            16.1484

# 2.5 -0.4
# -12.2 7.0           16.4575

def data_collect
  begin
    data_one = gets
    raise 'expected number' if data_one =~ /^[a-zA-Z]/

    data_two = gets
    raise 'expected number' if data_two =~ /^[a-zA-Z]/

    product = "#{data_one} #{data_two}".split

  rescue StandardError => e
    puts "Class error: #{e.class.name}, Error message: #{e.message}"

    puts "\n\nTente novamente.\n\n"
    retry
  end
end

def distance_between_two_points(product)
  result = Math.sqrt(
    ((product[2] - product[0])**2) + ((product[3] - product[1])**2)
  )

  distance = format('%.4f', result)
end

def init
  product = data_collect

  product.map!(&:to_f)

  distance = distance_between_two_points(product)

  puts distance
end

init
