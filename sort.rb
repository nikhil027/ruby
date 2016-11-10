 #puts " enter 1st array"
 n1 = [2, 2, 3, 50, 67]

 #puts " enter 2nd array"
 n2 = [-1, 0, 1, 3, 5 , 55, 90, 95]
 
 n3 = []
 i = 0
 j = 0

while n3.size <= n1.size + n2.size

 if n1[i] == nil
 	n3.push(n2[j])
 	j = j + 1

 elsif n2[j] == nil	
 	n3.push(n1[i])	
 	i = i + 1

 elsif n1[i] < n2[j]

 	n3.push(n1[i])
 	i = i + 1

 elsif 

 	n3.push(n2[j])
 	j = j + 1

 end

end
  	 
puts n3