resume = {
		"john_doe" => {
				"contact_details" => {
					"github" => "www.github.com/john",
					"email" => "john@gmail.com",
					"mobile" => {
						"home" => "1234567890",
						"office" => "0987654321"
						},
					"linkedin" =>"www.linkedin.com/john"
				}, #end of contact_details
				"punch_line" => "passionate in building products using ROR",
				"qualification_summary" => [
					"Strong knowledge", 
					"Trained for building apps form scarch",
					"Good understanding of oops"
				], #end of qualification_summary
				"education" => { "under_grad" => "Engg. in CS", "secondary" => "Suraana college"},
				"technical_skills" => {
					"language" => ["ruby", "html"],
					"framework" => ["ROR", "twitter bootstrap"],
					"uxtool" => ["balsamiq", "photoshop"]
					}, #end of technical_skills
				"certification" => [
					"trained on ROR in dctacademy",
					"java certification"
					], #end of certification
				"internship" => ["Jr Marketing", "Jr web developer"],
				"projects" =>[
					{
						"name" => "taskbox",
						"description" => "pm tool",
						"roles" => ["developed", "maintained", "tested"]
					},
					{
						"name" => "contracton",
						"description" => "contract based service",
						"roles" => ["developed", "maintained", "tested"]
					}
				] #end of projects


		}  # end of john_doe
}


# display email id
puts "\nThe email address of John doe is #{resume["john_doe"]["contact_details"]["email"]}"

puts "\n***** Qualification summary *****"
resume["john_doe"]["qualification_summary"].each do |points|
	puts "* #{points}"
end

puts "\n***** Technical skills *****"
resume["john_doe"]["technical_skills"].each do |key, value|
	puts "*** #{key.capitalize} ***"
	value.each do |v|
		puts "* #{v.capitalize}"
	end
end

=begin
puts "\n***** Technical skills *****"
resume["john_doe"]["technical_skills"].each do |key, value|
	puts "#{key.capitalize} : #{value.each do |v|
		p "#{v.capitalize}"
	end}"
end
=end

resume["john_doe"]["technical_skills"]["framework"].push("Django")

puts "\n#{resume["john_doe"]["technical_skills"]["framework"].to_s}"