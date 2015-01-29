require_relative "testing_library"

unless File.exists?(".name")
  print "Please enter your name\n"
  name = $stdin.gets.chomp
  File.open((".name"), "w") do |f|
    f.puts name
  end
end

dogs = ["Fido", "Harleigh", "Mali", "Trixie", "Snow", "Victory"]

def how_many_dogs(dogs)

end

def name_lengths(dogs)

end

def reverse_dog_names(dogs)

end

def first_three_dogs_with_each(dogs)

end

def first_three_dogs_without_each(dogs)

end

def reverse_case_dog_names(dogs)

end

def sum_of_all_dog_name_lengths(dogs)

end

def dogs_with_long_names(dogs)
  
end

puts "*"*80
puts "Make each method return the correct value"
puts "The check method will run and tell you if the answer is correct"
puts "*"*80


results = []

results << check("how_many_dogs", how_many_dogs(dogs), 6)
results << check("name_lengths", name_lengths(dogs), [4, 8, 4, 6, 4, 7])
results << check("reverse_dog_names", reverse_dog_names(dogs), ["odiF", "hgielraH", "ilaM", "eixirT", "wonS", "yrotciV"])
results << check("first_three_dogs_with_each", first_three_dogs_with_each(dogs), ["Fido", "Harleigh", "Mali"])
results << check("first_three_dogs_without_each", first_three_dogs_without_each(dogs), ["Fido", "Harleigh", "Mali"])
results << check("reverse_case_dog_names", reverse_case_dog_names(dogs), ["fIDO", "hARLEIGH", "mALI", "tRIXIE", "sNOW", "vICTORY"])
results << check("sum_of_all_dog_name_lengths", sum_of_all_dog_name_lengths(dogs), 33)
results << check("dogs_with_long_names", dogs_with_long_names(dogs), [false, true, false, true, false, true])


send_results(results)
