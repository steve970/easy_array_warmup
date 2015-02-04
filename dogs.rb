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
  dogs.count
end

def name_lengths(dogs)
  #dogs.map { |x| x.size }
  results = []
  dogs.each do |dog|
    results << dog.length
  end
  results
end

def reverse_dog_names(dogs)
  #dogs.map { |x| x.reverse }
  results = []
  dogs.each do |dog|
    results << dog.reverse
  end
  results
end

def first_three_dogs_with_each(dogs)
  result = []
  dogs.each do |dog|
    result << dog
  end
  result.take(3)
end

def first_three_dogs_without_each(dogs)
  dogs[0..2]
end

def reverse_case_dog_names(dogs)
  #dogs.map { |x| x.swapcase }
  results= []
  dogs.each do |dog|
    results << dog.swapcase
  end
  results
end

def sum_of_all_dog_name_lengths(dogs)
  #results = ""
  #dogs.each do |dog|
  #  results << dog.length
  #end
  #results.sum
  sum = 0
  dogs.each { |dog| sum += dog }

end

def dogs_with_long_names(dogs)
  results = []
  dogs.each do |dog|
    if dog.length > 4
      results << true
    else
      results << false
    end
  end
  results
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
