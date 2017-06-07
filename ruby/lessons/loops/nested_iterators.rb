teams = {
  "Houston Astros" => {
    "first base" => "AJ Reed",
    "second base" => "Jose Altuve",
    "shortstop" => "Carlos Correa"
  },
  "Texas Rangers" => {
    "first base" => "Prince Fielder",
    "second base" => "R. Odor",
    "shortstop" => "Elvis Andrus"
  }
}

teams.each do |team, players|
  puts team

  players.each do |position, player|
    p "#{player} starts at #{position}"
  end
end

# selects a key and value in the hash.
# p teams.select{|k, v| k == "Texas Rangers"}

# # Display the hash in the hash.
# teams.values[x].each do |position, player|
#   p "#{player} starts at #{position}"
# end
# p teams.values[0].values[0]

# prints the first key and value of the hash.
# p teams.to_a[0]