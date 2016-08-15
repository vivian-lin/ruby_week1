# Loops 20 times
n = 0
20.times do
  print n.to_s + ", "
  n += 1
end

# Loops 20 times
n = 20
20.times do
  print n.to_s + ", "
  n -= 1
end

# Method that takes an integer and runs through condition, prints out corresponding validity
def get_num
  puts "Give me a number"
  n = gets.to_i
  if n>=1 && n<=10
    p "valid"
  else
    p "invalid"
  end
end

# Method that makes array of 1-100, runs each element through conditions and puts the corresponding string
def print_num
  array = (1..100).to_a
  array.each do |x|
    if x%3==0 && x%5==0
      p "fizzbuzz"
    elsif x%3==0
      p "fizz"
    elsif x%5==0
      p "buzz"
    elsif
      p x
    end
  end
end

# Method that takes two integers and finds the sum
def sum_these_numbers (x, y)
  puts (x + y)
end

# Method that checks if number is even
def is_even x
  p x%2==0
end

# Using blocks and arrays
words = ["bird", "bee", "bug", "ball", "bread", "brick"]
# Way 1
words.each() {|x| puts x.upcase}
# Way 2
words.each() do |x|
  puts x.reverse
end

# Method that calls another method
def multiply_these_numbers x, y
  puts x * y
end
def new_method x, y
  multiply_these_numbers x,y
end

# Prompt the user for their birthday and print true or false
def valid_date
  print "What's your birthday month? - numbers only."
  x = gets.to_i
  print "What's your birth date? - numbers only."
  y = gets.to_i
  print "What's your birth year? - numbers only."
  z = gets.to_i
# Checks month and year validity
  month_validity = x>=1 && x<=12
  month_31 = x==1 || x==3 || x==5 || x==7 || x==8 || x==10 || x==12
  month_30 = x==4 || x==6 || x==9 || x==11
  feb_validity = x==2
  year_validity = z>=1
  leap_year = z%4==0
# Checks date validity
  if month_31 && year_validity==true
    p y>=1 && y<=31
  elsif month_30 && year_validity==true
    p y>=1 && y<=30
  elsif leap_year && feb_validity==true
    p y>=1 && y<=29
  elsif feb_validity && year_validity==true
    p y>=1 && y<=28
  else
    p false
  end
end

# Method that plays rock paper scissors with two users
def rps_game
  p "PLAYER A choose your move: rock, paper, or scissors."
  a = gets.downcase.chomp
  p "PLAYER B choose your move: rock, paper, or scissors."
  b = gets.downcase.chomp

  if a=="rock" && b=="scissors"
    p "Player A wins"
  elsif a=="scissors" && b=="rock"
    p "Player B wins"
  elsif a=="rock" && b=="paper"
    p "Player B wins"
  elsif a=="paper" && b=="rock"
    p "Player A wins"
  elsif a=="paper" && b=="scissors"
    p "Player B wins"
  elsif a=="scissors" && b=="paper"
    p "Player A wins"
  else a==b
    p "It's a tie!"
  end
end
