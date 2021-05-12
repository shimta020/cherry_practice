require 'Date'
today = Date.today
month = today.month
next_month = today.month + 1
year = today.year
day_of_week = ['Su','Mo','Tu','We','Th','Fr','Sa']
first_date = Date.new(year, month, 1)
last_date = Date.new(year, next_month, 1) - 1

puts "#{today.strftime("%B %Y")}".center(20)
puts day_of_week.join(' ')

(first_date..last_date).each_with_object(Array.new(7, '  ')) do |date, result|
  result[date.wday] = date.day.to_s.rjust(2,' ')
  if date.wday == 6
    puts result.join(' ')
  elsif date.day == last_date.day
    puts result[0..date.wday].join(' ')
  end
end