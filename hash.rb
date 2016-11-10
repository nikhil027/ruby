#p1 = {"first_name" => "ramesh", "last_name" => "arvind", "college" => "bms", "company" => "etv", "age" => 49, "awards" => [2005, 2009]}

#puts p1["first_name"]

movies = [{"name" => "DDLJ", "rating" => 9.2, "actors" => {"hero" => "SRK", "heroine" => "Kojol"}}, {"name" => "OM", "rating" => 9.2, "actors" => {"hero" => "SRK", "heroine" => "Prema"}}]

puts movies.last["actors"]["heroine"]

movies.first["actors"].each do |key, value|
	puts value
end