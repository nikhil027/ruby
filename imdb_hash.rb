imdb = {
	"inception" => {
		"imdb_rating" => "8.8/10",
		"genres" => ["Action", "Adventure", "Sci-Fi"],
		"synopsis" => "A thief, who steals corporate secrets through use of dream-sharing technology, is given the inverse task of planting an idea into the mind of a CEO.",
		"director" => "Christopher Nolan",
		"writer" => "Christopher Nolan",
		"lead_cast" => ["Leonardo DiCaprio", "Joseph Gordon-Levitt", "Ellen Page", "Tom Hardy", "Ken Watanabe", "Dileep Rao", 
						"Cillian Murphy", "Tom Berenger", "Marion Cotillard", "Pete Postlethwaite", "Michael Caine"],
		"story_line" => "Dom Cobb is a skilled thief, the absolute best in the dangerous art of extraction, stealing valuable secrets from deep within the subconscious during the dream state, when the mind is at its most vulnerable. Cobb's rare ability has made him a coveted player in this treacherous new world of corporate espionage, but it has also made him an international fugitive and cost him everything he has ever loved. Now Cobb is being offered a chance at redemption. One last job could give him his life back but only if he can accomplish the impossible - inception. Instead of the perfect heist, Cobb and his team of specialists have to pull off the reverse: their task is not to steal an idea but to plant one. If they succeed, it could be the perfect crime. But no amount of careful planning or expertise can prepare the team for the dangerous enemy that seems to predict their every move. An enemy that only Cobb could have seen coming.",
		"tag_line" => "Your mind is the scene of the crime. The dream is real",
		"plot_keywords" => [" dream", "subconscious", "ambiguous ending", "thief", "architecture"],
		"details" => {
			"official_sites" => ["Official Facebook", "Warner Bros. [Germany]", "Warner Bros. [France]", "Warner Bros. [Hungary]", 
								"Warner Bros. [Italy]", "Warner Bros. [Japan]", "Warner Bros. [United States]"],
			"country" => ["USA", "UK"],
			"language" => [" English", "Japanese", "French"],
			"release_date" => ["16 July 2010 (USA)", "8 July 2010 (UK)"],
			"filming_locations" => [" Bedfordshire", "England", "UK"]
			},#end of details
		"box_office" => {
			"budget" => "$160,000,000 (estimated)",
			"opening_weekend" => "£5,912,814 (UK) (16 July 2010)",
			"gross" => "$292,568,851 (USA) (31 December 2010)"
			}, # end of box_office
		"technical_specs" => {
			"runtime" => "148 min",
			"sound_mix" => ["Dolby Digital","DTS", "SDDS"],
			"color" => "color",
			"aspect_ratio" => "2.35 : 1"
			}, # end of technical_specs
		"reviews" => {
			"review_1" => {
				"name" => "howemonika",
				"rating" => "10/10",
				"singleline_comment" => "Amazing Directing, Captivating Plot, Overall Great",
				"comment" => "I had the privilege of seeing this movie before it came out, and, like most of DiCaprio's films, it blew me away."
			},
			"review_2" => {
				"name" => "Simon Bradley",
				"rating" => "9/10",
				"singleline_comment" => "Matrix but in dreamworld? Nah.",
				"comment" => "I'd like to keep my review rather to the point.
							Pros: 1. its theme - dream is a fascinating topic to say the least. There are a lot of unknowns in dreamworld. 
							2. its plot - there are several sweet twists and unpredictable turns."
			}

		}# end of review


	}# end of inception
}# end of imdb


puts imdb["inception"].keys