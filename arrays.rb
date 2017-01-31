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
