# Think of a documentary, a drama, a comedy, and a dramedy. Store the titles of these films in variables. Ask the user if they enjoy 1. documentaries 2. dramas 3. comedies. If they answer yes to documentaries, display a message recommending the documentary to them. If they answer no to documentaries but yes to dramas and comedies, recommend the dramedy. If they answer yes to only dramas, recommend the drama. If they say yes to only comedies, recommend the comedy. If they answer no to all three, recommend a good book instead.

my_documentary="Civilization by K.Clark"
my_drama="12 Angry men"
my_comedy="Some like it hot"
my_dramedy="Life is beautiful"

# Question time
puts "Do you enjoy documentaries? (yes/no)"
gets.chomp == "yes"? user_likes_docs = true: user_likes_docs = false

puts "Do you enjoy dramas? (yes/no)"
gets.chomp == "yes"? user_likes_dramas = true: user_likes_dramas = false

puts "Do you enjoy comedies? (yes/no)"
gets.chomp == "yes"? user_likes_comedies = true: user_likes_comedies = false

# debugging
 # puts user_likes_docs
 # puts user_likes_dramas
 # puts user_likes_comedies

#conditionals
if user_likes_docs
  puts "May I recommend #{my_documentary} to your attention?"
elsif user_likes_dramas && user_likes_comedies
  puts "Since you like both dramas and comedies, may I suggest #{my_dramedy}?"
elsif user_likes_dramas
  puts "Maybe you would like to watch #{my_drama}?"
elsif user_likes_comedies
  puts "Would you prefer to watch #{my_comedy}?"
elsif not(user_likes_docs) && not(user_likes_dramas) && not(user_likes_comedies)
  puts "Not into movies? How about a book? The Name of the Rose by Umberto Eco, for instance?"
end
