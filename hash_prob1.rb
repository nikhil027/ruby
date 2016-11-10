jobs = {
           "query" => "ruby on rails",
           "results" => [
        
                {
                    "jobtitle" => "ROR Developer",
                    "company" => "Technosoft Global Services Pvt Ltd",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Indeed",
                    "jobkey" => "",
                    "sponsored" => false,
                    "expired" => false          
               } ,

               {
                    "jobtitle" => "Fullstack/middleware/server-app developer - fresher or experience",
                    "company" => "OERDev",
                    "city" => "Mysore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Times Job",
                    "jobkey" => "1b01814f1cbc333d",
                    "sponsored" => true,
                    "expired" => true
               },

               {
                    "jobtitle" => "Software Web UI Engineer - Ruby On Rails JavaScript AJAX",
                    "company" => "People Gamut",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "WisdomJobs.com",
                    "jobkey" => "2ed53c04408249a6",
                    "sponsored" => false,
                    "expired" => false
               },

               {
                    "jobtitle" => "Full Stack Software Engineer - Ruby mongodb",
                    "company" => "Premium-Jobs",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "WisdomJobs.com",
                    "jobkey" => "4031a26fb78a4aeb",
                    "sponsored" => true,
                    "expired" => false
               },

               {
                    "jobtitle" => "Edureka - Software Engineer - PHP Ruby On Rails Laravel",
                    "company" => "Edureka",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "WisdomJobs.com",
                    "jobkey" => "1f54fd2de6c0eba8",
                    "sponsored" => false,
                    "expired" => false
               },

               {
                    "jobtitle" => "Software Developer",
                    "company" => "Abyeti",
                    "city" => "Mysore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Abyeti",
                    "date" => "Fri, 20 May 2016 16=>27=>06 GMT",
                    "jobkey" => "8579ae6450978fe8"
               },

               {
                    "jobtitle" => "Ruby on Rails",
                    "company" => "Masymbol Technologies",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Masymbol Technologies",
                    "jobkey" => "7a43d5241fec6c9a",
                    "sponsored" => false,
                    "expired" => false
               },

               {
                    "jobtitle" => "Internship@foOfys",
                    "company" => "Foofys",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Foofys",
                    "jobkey" => "02601472025b7962",
                    "sponsored" => true,
                    "expired" => false
               },

               {
                    "jobtitle" => "Full Stack Engineer",
                    "company" => "Azureiken Technologies",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Azureiken Technologies",
                    "jobkey" => "5441403f2056a1ca",
                    "sponsored" => false,
                    "expired" => true
               },

               {
                    "jobtitle" => "Ruby on Rails Developer",
                    "company" => "Scripbox",
                    "city" => "Bangalore",
                    "state" => "KA",
                    "country" => "IN",
                    "source" => "Scripbox",
                    "jobkey" => "1c838d054ea6d3e6",
                    "sponsored" => false,
                    "expired" => true
               }
          ]
}

# 1st query
puts "\n1st query"
openings = 0

jobs["results"].each do |value|
     if value["expired"] == false
          openings += 1
     end
end

puts "There are #{openings} job openings"

# 2nd query
puts "\n2nd query"
job_place = 0

jobs["results"].each do |value|
     if value["city"] == ( "Bangalore" or "Mysore" ) 
          job_place += 1
     end
end

puts "#{job_place} jobs available in Bangalore and Mysore"

# 3rd query
puts "\n3rd query"
jobs_count = {"bangalore" => 0, "mysore" => 0}
jobs["results"].each do |value|
     if value["city"] == "Bangalore"
          jobs_count["bangalore"] += 1
     elsif value["city"] == "Mysore"
          jobs_count["mysore"] += 1
     end
end
puts jobs_count.to_s

# 4th query
puts "\n4th query"
jobs["results"].each do |value|
     if ( value["sponsored"] == nil ) and ( value["expired"] == nil )
          puts "#{value["jobtitle"]} does not have sponsored and expired keys"
     end
end

# 5th query
puts "\n5th query"
jobs["results"].each do |value|
     if value["expired"] == true
          puts "#{value["jobtitle"]} job is expired"
     end
end

# 6th query
puts "\n6th query"
jobs["results"].each do |value|
     if value["sponsored"] == true
          puts "#{value["jobtitle"]} job is sponsored"
     end
end

# 7th query
puts "\n7th query"
sponsored_true_count = 0
jobs["results"].each do |value|
     if value["sponsored"] == true
          sponsored_true_count += 1
     end
end
puts "There are #{sponsored_true_count} hash where sponsored value is true"

# 8th query
puts "\n8th query"
expired_true_count = 0
jobs["results"].each do |value|
     if value["expired"] == true
          expired_true_count += 1
     end
end
puts "There are #{expired_true_count} hash where expired value is true"

# 9th query
puts "\n9th query"
source_array = []
jobs["results"].each do |value|
     source_array.push(value["source"])
end
puts source_array.to_s

# 10th query
puts "\n10th query"
puts "Jobs whose source is WisdomJobs.com are\n"
jobs["results"].each do |value|
     if value["source"] == "WisdomJobs.com"
          puts "#{value["jobtitle"]}"
     end
end

# 11th query
puts "\n11th query"
puts "Job which does not contain jobkey is \n"
jobs["results"].each do |value|
     if value["jobkey"] == ""
          puts "#{value["jobtitle"]}"
     end
end
