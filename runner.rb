require 'unirest'

solved = false

while !solved
  system "clear"
  print "Give me your guess: "
  user_guess = gets.chomp

  response = Unirest.get("http://localhost:3000/guess_segment/#{user_guess}")
  data = response.body

  if data["message"] == "You Win!!!!"
    solved = true
  end

  puts JSON.pretty_generate(data)
  x = gets.chomp
end