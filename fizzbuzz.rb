# def fizz_buzz(number)
# return "Fizz"
# end

def fizz_buzz(number)
  case
  when number % 15 == 0 then "Fizz Buzz"
  when number % 3 == 0 then "Fizz"
  when number % 5 == 0 then "Buzz"
  else number
  end
end
