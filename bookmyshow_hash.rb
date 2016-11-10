bookmyshow = {
	"pvr_forum" => {
		"address" => "Forum Mall, Adugodi Main Road, Koramangala, Bengaluru, Karnataka 560095, India",
		"movie_1" => {  "movie_name" => "The Shallows",
						"certificate" => "A",
						"timing" => ["11:30 AM"],
						"language" => ["english"],
						"genre" => ["drama", "thriller"],
						"release_date" => "16 Sep, 2016",
						"runtime" => "1 hrs 26 mins",
						"synopsis" => "In the taut thriller The Shallows, Nancy, who is surfing on a secluded beach, finds herself on the feeding ground of a great white shark. Though she is stranded only 200 yards from shore, survival proves to be the ultimate test of wills, requiring all of Nancy`s ingenuity, resourcefulness, and fortitude.",
						"reviews" => {
							"critic_review" => {
								"bms_reviewer" => "Verdict: A typical man vs shark movie, but better. What do Jaws, Deep Blue Sea, Sharknado, Open Water, and Shark Night have in common? They`re all movies about sharks! Watching these movies could give you Thalassophobia (fear of the sea).",
								"the_times_of_india" => "The Shallows, at first, seems like an almost languid and tranquil vacation movie. We have Nancy, who is an avid surfer in search for the perfect wave, finding a sea of serenity in her perfect vacation spot."
								},
							"user_review" => {
								"review_1" => {"rating" => "5/5", "comment" => "nice movie, the excitement could have been more if the main character could have shown more of strategic than logical, overall a good movie. nice photography, climax was good"},
								"review_2" => {"rating" => "4/5", "comment" => "Simply superb i love it really thrilling movie no boring those who love oceans will love this movie i hope. Heroin performance is super and i enjoyed entire movie"}
							}
						} # end of reviews

		}, # end of movie_1

		"movie_2" => {  "movie_name" => "Banjo",
						"certificate" => "UA",
						"timing" => ["12:00 PM", "03:55 PM", "06:50 PM", "09:45 PM"],
						"language" => ["hindi"],
						"genre" => ["drama", "musical"],
						"release_date" => "23 Sep, 2016",
						"runtime" => "2 hrs 18 mins",
						"synopsis" => "Taraat, a local banjo player seeks fame, success, and money. In his pursuit, he crosses path with Christina who helps him accomplish his goals.",
						"reviews" => {
							"critic_review" => {
								"bms_reviewer" => "Verdict: A paisa-wasool musical with a desi tadka. It has been a long time since a dream sequence was shot anywhere other than the snowy mountains of Switzerland, roads of Las Vegas or the Black Beach where you could see a deserted plane.",
								"the_times_of_india" => "Director Ravi Jadhav, who has some outstanding Marathi films to his name (like Natarang), captures the pulse of Mumbai and the city`s buzzing chawl culture in Banjo with simplicity and a dash of humour. His characters exude the quintessential middle-class values, which are bound to resonate with many."
								},
							"user_review" => {
								"review_1" => {"rating" => "5/5", "comment" => "This movie is awesome... Ritesh and D ultimate acting... I love this movie... Different story is this movie... Full enjoy movie and soo intresting..."},
								"review_2" => {"rating" => "4/5", "comment" => "Banjo is a musical journey of street performers of India. The script and screenplay is good and well executed. As actors , Ritesh has come of age and is perhaps one of the very versatile actors we have today. Music is good and the Bajo tune have hang on you. Must watch"}
							}
						} # end of reviews

		}, # end of movie_2

		"movie_3" => {  "movie_name" => "Mungaru Male 2",
						"certificate" => "U",
						"timing" => ["03:30 PM", "06:45 PM"],
						"language" => ["kannada"],
						"genre" => ["drama", "romance"],
						"release_date" => "Sep 10, 2016",
						"runtime" => "2 hrs 36 mins",
						"synopsis" => "Preetham is the only son of millionaire Suryakanth and is very impulsive. Preetham searches for excitement in everything he does and gets bored too easily, even in relationships. This is when Nandini enters his life and takes him on a new `Love roller-coaster`.",
						"reviews" => {
							"critic_review" => {
								"deccan_chronicle" => "Even Picasso himself would have failed to repeat his masterstroke, if he was asked to paint one of his famous art work, for the second time! Well, it reminds of the saying by John D. Rockefeller, one of world`s richest man - \"If you want to succeed you should strike out on new paths, rather than travel the worn paths of accepted success.\" ",
								"the_times_of_india" => "This film is for those who love the trademark romantic capers."
								},
							"user_review" => {
								"review_1" => {"rating" => "1/5", "comment" => "this not a movie, no entertainment, nothing in this movie, No story, there is no link at all, cannot compare mungarumale 1 I am not sure before release who saw this and released, very bad movie"},
								"review_2" => {"rating" => "4/5", "comment" => "paisa vasool. Nice movie. Ravichandran's and Ganesh's acting is awesome. enjoyed the movie. Nice music by Arjun. Armaan malik's song is excellent."}
							}
						} # end of reviews

		} # end of movie_3


	}# end of pvr_forum
}# end of bookmyshow


puts bookmyshow["pvr_forum"].keys