def FizzBuzz(numbers)
  numbers.each do |n|
    if n%15 == 0
      puts 'Fizz Buzz'
    elsif n%5 == 0
      puts 'Buzz'
    elsif n%3 == 0
      puts 'Fizz'
    else
      puts n
    end
  end
end

numbers = (0..30)

FizzBuzz(numbers)