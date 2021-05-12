require 'Date'
today = Date.today
day_of_week = ['Su','Mo','Tu','We','Th','Fr','Sa']

puts "#{today.strftime("%B")} #{today.strftime("%Y")}".center(20)
puts day_of_week.join(' ')