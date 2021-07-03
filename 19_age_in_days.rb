# URI Online Judge | 1020
# Idade em Dias

# Adaptado por Neilor Tonin, URI Brasil
# Timelimit: 1

# Leia um valor inteiro correspondente à idade de uma pessoa em dias
# e informe-a em anos, meses e dias
# Obs.: apenas para facilitar o cálculo, considere todo ano com 365 dias
# e todo mês com 30 dias. Nos casos de teste nunca haverá uma situação
# que permite 12 meses e alguns dias, como 360, 363 ou 364.
# Este é apenas um exercício com objetivo de testar raciocínio
# matemático simples.

# Entrada
# O arquivo de entrada contém um valor inteiro.

# Saída
# Imprima a saída conforme exemplo fornecido.

# Exemplo de Entrada 	Exemplo de Saída
# 400                 1 ano(s)
#                     1 mes(es)
#                     5 dia(s)

# 800                 2 ano(s)
#                     2 mes(es)
#                     10 dia(s)

# 30                  0 ano(s)
#                     1 mes(es)
#                     0 dia(s)

class TimeLife
  def initialize(params)
    @total_days = params
    @age_in_days = { year: 0, month: 0, days: 0 }
    @days_in_the_year = 365
    @days_in_the_month = 30
  end

  def print_age
    conversion_of_days
    puts "#{@age_in_days[:year]} ano(s)"
    puts "#{@age_in_days[:month]} mes(es)"
    puts "#{@age_in_days[:days]} dia(s)"
  end

  private

  def conversion_of_days
    @age_in_days[:year] = year
    @age_in_days[:month] = month
    @age_in_days[:days] = days
  end

  def year
    @total_days / @days_in_the_year
  end

  def month
    (@total_days % @days_in_the_year) / @days_in_the_month
  end

  def days
    (@total_days % @days_in_the_year) % @days_in_the_month
  end
end

time_life = TimeLife.new(gets.to_i)
time_life.print_age
