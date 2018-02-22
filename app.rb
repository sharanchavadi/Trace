require 'httparty'
require 'JSON'
require 'pry'


url = "http://localhost:3000/api/v1/states"

response = HTTParty.get("#{url}")

states = JSON.parse(response.body)


puts "The states and codes are :"
states.each do |state|
	puts "#{state["code"]} - #{state["name"]}"
end

puts "Enter the code to find the state"
state_code = gets.chomp

states.each do |state|
	if state_code == state["code"]
		puts "#{state["code"]} state found"
	end
end



url = "http://localhost:3000/api/v1/states/"

puts "Enter the state code"
s_code = gets.chomp

response = HTTParty.get("#{url}#{s_code}")

state = JSON.parse(response.body)

puts "#{state["code"]} - #{state["name"]}"




url = "http://localhost:3000/api/v1/states"

puts "Enter the state code:"
code = gets.chomp
puts "Enter the state name:"
name = gets.chomp

HTTParty.post("#{url}", body: {"state" => {"code" => "#{code}", "name" => "#{name}"}, :headers => {'Content-Type' => 'application/json' }})





url = "http://localhost:3000/api/v1/states"

response = HTTParty.get("#{url}")

states = JSON.parse(response.body)

puts "Enter the code to find the state and delete:"
state_code = gets.chomp

url = "http://localhost:3000/api/v1/states/"

states.each do |state|
	if state_code == state["code"]
		#puts "#{state["code"]} state found"
		HTTParty.delete("#{url}#{state["code"]}")
		puts "Record deleted"
	end
end



url = "http://localhost:3000/api/v1/states"

response = HTTParty.get("#{url}")

states = JSON.parse(response.body)

puts "Enter the record to be updated:"
state_code = gets.chomp

url = "http://localhost:3000/api/v1/states/"

states.each do |state|
	if state_code == state["code"]
		#puts "#{state["code"]} state found"
		puts "Enter the new value for code"
		code = gets.chomp
		puts "Enter the new value for state name"
		name = gets.chomp
	
		HTTParty.put("#{url}#{state_code}", body: {"state" => {"code" => "#{code}", "name" => "#{name}"}, :headers => {'Content-Type' => 'application/json' }})
	end
end












