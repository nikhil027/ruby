class Tweet
	# attributes - body,user, publish
	def body=(user_input)
		if user_input.length < 20
			@body = user_input
		else
			@body
		end
	end
	def body
		@body
	end
	def publish
		if body.length < 20
			@body
		else
			"Tweet is too long"
		end
	end
end

tweets = []
tweet_1 = Tweet.new
tweet_1.body = "India"
tweets.push(tweet_1)
tweet_2 = Tweet.new
tweet_2.body = "India is playing NZ in Bangalore"
tweets.push(tweet_2)

tweets.each do |tweet|
	puts "* #{tweet.body}"
end