puts "Guess a number between 0  and 1000:"

rando=rand(1000)
MAX_TIMES=3
count=0
puts rando

def check_number(guess)
  number = %w(0 1 2 3 4 5 6 7 8 9)
    guess.each_char do |digit|
      if !number.include? (digit)
    break false
      end
    end
end

while count<MAX_TIMES
guess=gets.chomp
  if check_number(guess) 
    guess=guess.to_i 
    if guess<rando
      puts "Too low, try again..."
      count+=1
    elsif guess>rando
      puts "Too high, guess again..."
      count+=1
    elsif guess==rando
      puts "Yay! You guessed the number!"
      break
    end
  else
    puts "that is not a valid number"
    count += 1
  end
end

if count>=MAX_TIMES
  puts "...actually you're out of guesses, you loose!!"
end