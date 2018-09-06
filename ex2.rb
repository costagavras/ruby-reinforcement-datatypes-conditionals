# Let's take a different approach to film recommendations: create the same variables containing your potential film recommendations and then ask the user to rate their appreciation for 1. documentaries 2. dramas 3. comedies on a scale from one to five. If they rate documentaries four or higher, recommend the documentary. If they rate documentaries 3 or lower but both comedies and dramas 4 or higher, recommend the dramedy. If they rate only dramas 4 or higher, recommend the drama. If they rate just comedies 4 or higher, recommend the comedy. Otherwise, recommend a good book.

my_documentary="Civilization by K.Clark"
my_drama="12 Angry men"
my_comedy="Some like it hot"
my_dramedy="Life is beautiful"


# Question time
puts "How would you rate documentaries on a scale from 1 to 5?"
maxvotedocs = gets.chomp.to_i
maxvotedocs >=4? recommend_docs = true: recommend_docs = false
# puts maxvotedocs

puts "How would you rate dramas on a scale from 1 to 5?"
maxvotedramas = gets.chomp.to_i
maxvotedramas >=4? recommend_dramas = true: recommend_dramas = false
# puts maxvotedramas

puts "How would you rate comedies on a scale from 1 to 5?"
maxvotecomedies = gets.chomp.to_i
maxvotecomedies >=4? recommend_comedies = true: recommend_comedies = false
# puts maxvotecomedies

#conditionals
if recommend_docs
  puts "May I recommend #{my_documentary} to your attention?"
elsif not(recommend_docs) && recommend_dramas && recommend_comedies
  puts "Since you like both dramas and comedies, may I suggest #{my_dramedy}?"
elsif recommend_dramas
  puts "Maybe you would like to watch #{my_drama}?"
elsif recommend_comedies
  puts "Would you prefer to watch #{my_comedy}?"
elsif not(recommend_docs) && not(recommend_dramas) && not(recommend_comedies)
  # puts "Not into movies? How about a book? The Name of the Rose by Umberto Eco, for instance?"

  #Stretch exercise
  if maxvotedocs > maxvotedramas && maxvotedocs > maxvotecomedies
    puts "Documentaries got the highest vote. May I recommend #{my_documentary} to your attention?"
  elsif maxvotedramas > maxvotedocs && maxvotedramas > maxvotecomedies
    puts "Dramas got the highest vote. May I recommend #{my_drama} to your attention?"
  elsif maxvotecomedies > maxvotedocs && maxvotecomedies > maxvotedramas
    puts "Comedies got the highest vote. May I recommend #{my_comedy} to your attention?"
  else maxvotedocs == maxvotedramas && maxvotedocs == maxvotecomedies
    puts "All genres have equally low votes. Are you from Jupiter? "
  end

end
