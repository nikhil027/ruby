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

=begin
Give the hash jobs. Find 
1. Total Jobs Opening
2. Total Jobs in Bangalore & Mysore
3. Create a new hash of Jobs Count based on the location ie {"bangalore" => x, "mysore" => y}
4. Find the Job Title where the keys "sponsored" & "expired" is missing
5. Find all the expired jobs
6. Find all the Sponsored Jobs
7. Find the count of sponsored is true 
8. Find the count of expired is true 
9. Make an array of all Sources
10. Find all the jobs whose source is WisdomJobs.com
11. Find the job whose jobkey is ""
=end

#1
puts "\n1st query"
puts "Total jobs available are #{jobs["results"].length}"
#2
puts "\n2nd query"
puts "Total jobs available in Bangalore and Mysore are #{jobs["results"].find_all{|n| n["city"] == "Bangalore" || "Mysore"}.length}"

#3
puts "\n3rd query"
job = {}
job["bangalore"] = jobs["results"].find_all{|n| n["city"] == "Bangalore"}.length
job["mysore"] = jobs["results"].find_all{|n| n["city"] == "Mysore"}.length
puts job.to_s

#4
puts "\n4th query"
puts jobs["results"].find_all{|n| !n.has_key?("sponsored" && "expired") } 

#5
puts "\n5th query"
puts jobs["results"].find_all{|n| n["expired"] == true}
#6
puts "\n6th query"
puts jobs["results"].find_all{|n| n['sponsored'] == true}
#7
puts "\n7th query"
puts jobs["results"].find_all{|n| n['sponsored'] == true }.length
#8
puts "\n8th query"
puts jobs["results"].find_all{|n| n['expired'] == true}.length

#9
puts "\n9th query"
source_array = []
jobs["results"].find_all{|n| source_array.push(n["source"])}
puts source_array.to_s


#10
puts "\n10th query"
job =  jobs["results"].find_all{|n| n['source'] == 'WisdomJobs.com'}
job.each do |j| 
     puts j["jobtitle"]
end
#11
puts "\n11th query"
puts jobs["results"].find_all {|n| n['jobkey'] == ""}