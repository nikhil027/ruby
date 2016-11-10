zomato = {
				"hakuna_matata" => {
					"overview" => {
						"phone_number" => ["+91 9741133866", "+91 9880548165"],
						"opening_hours" => "12:30 PM to 11:30 PM",
						"cuisines" => ["North Indian", "Asian", "Seafood"], 
						"cost" => ["Rs 1,200 for two people (approx.) with alcohol", "Rs 109  for a pint of beer (approx.)"],
						"address" => "1231/35/2, 24th Main, 7th Phase, Opposite Brigade Palm Springs, JP Nagar, Bangalore",
						"highlights" => ["Full Bar Available", "Smoking Area", "Outdoor Seating", "Nightlife"],
						"featured_in_collection" => ["Pocket friendly bars", "Best bars & pubs"],
						"known_for" => ["Their rooftop ambience"]
					}, # end of overview

					"reviews" => {
						"review_1" => { "name" => "Arnab Roy", 
										"rating" => "4.5/5", 
										"comment" => " This is a good place to hang our with frnds. Though the restaurant does not fall under pocket friendly category , if you need a good place to spend time with closed ones around JP nagar then this is the best option."
						},
						"review_2" => { "name" => "Prakash Praki",
										"rating" => "4.5/5",
										"comment" => "Celebrated my birthday here in Hakuna Matata. This place is big enough to accommodate a lotta people and gets crowded late in the evenings. The place looked extremely beautiful and the service was peaceful too. The food and the sides tasted nice and spicy(that's what we asked for)."

						},
						"review_3" => { "name" => "Dipto Pandit",
										"rating" => "4.0/5",
										"comment" => "A different experience. I visited this place on a crowded Sunday evening. We had to wait for around 15 min to get a table. The ambiance is very nice. The place is very spacious with ample parking. The food is good, but could have been better."

						}

					} # end of reviews
				} # end of hakuna_matata
} # end of zomato

puts zomato["hakuna_matata"].keys