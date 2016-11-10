apartment = { 
			  "flat_101" => { "male" => "Ravi", "female" => "Geetha"} ,
			  "flat_102"  => { "male" => "Vikas", "female" => "Rani"} ,
			  "flat_103"  => { "male" => "Raju", "female" => "Shruthi"}
			}

			puts apartment

		apartment.each do |key, value|
			puts value["male"]	
			end
			#puts n.find { |m| m["flat_101"] == }
		