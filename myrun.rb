# User can enter their name and program responds, "Hi, [user name]"
puts "What's your name?"
print ">"
username = $stdin.gets.chomp
puts "Welcome, #{username}"

# User can input age and program repeats information back to user
puts "How old do you feel today?"
print ">"
user_age = $stdin.gets.chomp.to_i
# if i collect data and convert string to integer it converts strings to zero
# check whether is bigger than zero or not to check the number func.

def validate_age(age)
    if age > 0
    puts "So today you feel #{age} years old."
  else
    puts "You should enter a integer, try again!"
    age = $stdin.gets.chomp.to_i
    validate_age(age)
  end
end
# you can just call the method if you have puts inside
validate_age(user_age)

# User can decide whether or not they want their fortune told and program responds.

puts "Would you like me to tell you your fortune for today?"
puts "Please type Y or N!"
to_fortune = $stdin.gets.chomp

# puts gets the command_result and prints it out!

def tell_fortune?(answer)
  if answer.upcase == "Y"
     "Let me begin with.... "
  elsif answer.upcase == "N"
     "it was nice meeting you, have a nice day then!"
  else
     puts "Please enter Y or N"
     answer = $stdin.gets.chomp # to rewrite the answer
     tell_fortune?(answer)
  end
end

puts tell_fortune?(to_fortune)

#  If user decides to have their fortune told,
#(remember - is the answer to the question an integer, a boolean or a string?).
#Depending on this detail, the program tells the user's fortune.

puts "What is the first thing comes to your mind?"
print ">"
mind_info = $stdin.gets.chomp


def fortune(age,mind)
  when age <= 20
    puts "just, go out!"
  when mind.length >= 5
    puts "I feel like you think so much, why not you take a deep breath first?"
  when age <= 20 & mind > 5
    puts "You think too much, The Life is easier than you think. just live!"
  else
    puts "I know you want to learn about your future but I don't feel like telling you one"
  end
end

fortune(user_age,mind_info)
