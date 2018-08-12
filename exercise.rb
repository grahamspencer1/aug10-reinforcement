seating = [
  [nil, "Pumpkin", nil, nil],
  ["Socks", nil, "Mimi", nil],
  ["Gismo", "Shadow", nil, nil],
  ["Smokey","Toast","Pacha","Mau"]
]

puts "Seating arrangement day! Take a minute to think of where you wanna sit."

sleep(1)
puts "..."
sleep(1)
puts "..."
sleep(1)
puts "..."
sleep(1)

seating.each_with_index {|row, row_index|
  seating[row_index].each_with_index {|column, column_index|
    if column == nil
      print "Row #{row_index+1} seat #{column_index+1} is free. Does anyone want to sit here? (y/n)"
      answer = gets.chomp
      if answer == 'y'
        puts "Alright, what's your name, sweetie?"
        name = gets.chomp.downcase
        seating[row_index][column_index] = name.capitalize
        puts "#{name.capitalize} is a pretty name! Okay, #{name.capitalize}, you sit there."
      else
        puts "Nobody? Okay then."
      end
    end
  }
}

puts "Alright, so the final seating arrangement is..."
sleep(1)
puts "(Drumroll...)"
sleep(1)
puts "..."
sleep(1)
puts "..."
sleep(1)
puts "#{seating}"
sleep(1)
puts "I hope you got the seat you wanted!"
