if 1 < 2
   puts "Hot diggity, 1 is less than 2!"
 end
 #=> Hot diggity, 1 is less than 2!

 puts "Hot diggity damn, 1 is less than 2" if 1 < 2

 mensagem =  "attack_by_land"
 if mensagem == true
   puts "release the goat"
 else
   puts "release the shark"
 end  

 if 1 < 2 && 5 < 6
   puts "Party at Kevin's!"
 end
 
 # This can also be written as
 if 1 < 2 and 5 < 6
   puts "Party at Kevin's!"
 end

 #spaceship operators
5 <=> 10    #=> -1
10 <=> 10   #=> 0
10 <=> 5    #=> 1

a = 5
b = 5
a.equal?(b) #=> true

if 10 < 2 || 5 < 6 #=> although the left expression is false, there is a party at Kevin's because the right expression returns true
   puts "Party at Kevin's!"
 end

 grade = 'F'

did_i_pass = case grade #=> create a variable `did_i_pass` and assign the result of a call to case with the variable grade passed in
  when 'A' then "Hell yeah!"
  when 'D' then "Don't tell your mother."
  else "McDonald's is hiring!"
end

#unless
age = 18
puts "Welcome to a life of debt." unless age < 17

unless age < 17
  puts "Down with that sort of thing."
else
  puts "Careful now!"
end

#ternary operator
age = 18
response = age < 17 ? "You still have your entire life ahead of you." : "You're all grown up."
puts response #=> "You're all grown up."