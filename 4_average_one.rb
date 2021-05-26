number_one = gets.to_f
number_two = gets.to_f

weight_one = 3.5
weight_two = 7.5
weight_total = weight_one + weight_two

average_one = number_one * weight_one
average_two = number_two * weight_two

average = (average_one + average_two) / (weight_total)

puts "MEDIA = %.5f" % [average]
