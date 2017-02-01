our_class = ["Kalea", "Nancy", "David", "Ron", "Laura", "Dave", "Demtra", "Kendrick", "Phil", "Ben", "Michael", "Miguel"]
our_class.select {|student| student.length < 5}

sentence = "Ruby is actually kind of fun once you get used to it."
words = sentence.split
words.select {|word| word.length == 4 }

movies = []
movies << {
  title: "Forest Gump",
  budget: 55,
  stars: ["Tom Hanks"]
}
movies << {
  title: "Star Wars",
  budget: 11,
  stars: ["Mark Hamill", "Harrison Ford"]
}
movies << {
  title: "Batman Begins",
  budget: 150,
  stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
}
movies << {
  title: "Titanic",
  budget: 200,
  stars: ["Kate Winslet", "Leonardo DiCaprio"]
}
movies << {
  title: "Inception",
  budget: 160,
  stars: ["Leonardo DiCaprio", "JGL"]
}

movies_under_100 = []
movies.each do |budget|
  movies_under_100 << budget[:title] if budget[:budget] < 100
end
puts "Movies under 100: #{movies_under_100}"

starring_leo = []
movies.each do |star|
  starring_leo << star[:title] if star[:stars].include? "Leonardo DiCaprio"
end

puts "Movies starring Leonardo DiCaprio: #{starring_leo}"


# Starting adventure mode
def four_words(text)
  answers = []
  check_words = text.split
  check_words.each {|word| answers << word if word.length == 4}
  return answers
end

def how_many_nums(text, num)
  answers = []
  check_words = text.split
  check_words.each {|word| answers << word if word.length == num.to_i}
  return answers
end

def total_budget(movies)
  cost = 0
  movies.each {|money| cost += money[:budget]}
  return cost
end


# Starting epic mode question 1
def names_array(movies)
  names_array = movies.collect {|name| name[:stars]}.flatten.uniq
  return names_array
end

# Please don't grade this part.
# def starring?(movies, star)
#   movie_by_star = movies.select {|movie| movie[:stars].include? star}
#   return movie_by_star.collect {|movie| movie[:title]}
# end
#
# def org_movie_array(movies)
#   movie_by_actor = []
#   movie_star_names = names_array(movies)
#   movie_star_names.each do |name|
#     movie_titles = starring?(movies, name)
#     by_star = {:name => "#{name}", :title => movie_titles}
#   movie_by_actor << by_star
#   end
#   return movie_by_actor
# end

# Okay, these can be graded!
# Epic mode question 2
def average_budget(movies)
  total_budget(movies) / movies.length
end

# Epic mode question 3
def median_budget(movies)
  movie_budgets = movies.collect {|cost| cost[:budget]}
  movie_budgets.sort!
  if movie_budgets.length % 2 != 0
    movie_budgets[movie_budgets.length / 2]
  else
    ((movie_budgets[(movie_budgets.length / 2) - 1]) + (movie_budgets[(movie_budgets.length / 2)])) / 2
  end
end
