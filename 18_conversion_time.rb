#  URI Online Judge | 1019
# Conversão de Tempo

# Adaptado por Neilor Tonin, URI Brasil
# Timelimit: 1

# Leia um valor inteiro, que é o tempo de duração em segundos de um
# determinado evento em uma fábrica, e informe-o expresso no formato
# horas:minutos:segundos.

# Entrada
# O arquivo de entrada contém um valor inteiro N.

# Saída
# Imprima o tempo lido no arquivo de entrada (segundos), convertido para
# horas:minutos:segundos, conforme exemplo fornecido.

# Exemplo de Entrada 	Exemplo de Saída
# 556                 0:9:16
# 1                   0:0:1
# 140153              38:55:53

class ConvertHour
  def initialize(params)
    @time = params
    @hour_in_sec = 3600
    @default_time = 60
  end

  def print_time
    puts "#{hour(@time)}:#{minutes(@time)}:#{second(@time)}"
  end

  private

  def hour(params)
    params = if params >= @hour_in_sec
               ((params / @default_time) / @default_time)
             else
               0
             end
  end

  def minutes(params)
    params = if params >= @hour_in_sec
               (params % @hour_in_sec) / @default_time
             else
               params / @default_time
             end
  end

  def second(params)
    params = params % @default_time
  end
end

time = ConvertHour.new(gets.to_i)
time.print_time
