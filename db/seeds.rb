
#Mohab Ashraf
#16/10/2018
10.time do|blog|
	Blog.create!(
		title: "Blog number #{blog}",
		body:  "sdjskjdbjkdsj"
	)
end 
puts "Blogs created"
10.time do|skill|
	Skill.create!(
		title: "Rails #{skill}",
		percentage:  75
	)
end
puts skill created