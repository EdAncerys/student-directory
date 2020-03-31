# lets put all students into an array
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november, country: "UK"},
  {name: "Darth Vader", cohort: :november, country: "UK"},
  {name: "Nurse Ratched", cohort: :november, country: "UK"},
  {name: "Michael Corleone", cohort: :december, country: "US"},
  {name: "Alex DeLarge", cohort: :november, country: "Sweeden"},
  {name: "The Wicked Wich of The West", cohort: :december, country: "Spain"},
  {name: "Terminator", cohort: :november, country: "Austria"},
  {name: "Freddy Krueger", cohort: :october, country: "Germany"},
  {name: "The Joker", cohort: :november, country: "US"},
  {name: "Joffrey Baratheon", cohort: :october, country: "7 Kingdoms"},
  {name: "Norman Bates", cohort: :january, country: "Denmark"}
]

# def test
#   stud = ["hello", "world", "another"]
# end
# def print_footer(name)
#   puts "Number of strings #{name.count}"
# end

# print_footer(test)

# 1 indexing names
# students.each_with_index() do |student, index|
#   puts "Index: #{index + 1} #{student[:name]}"
# end

# 2 filter names by letter
# students.each do |student|
#   puts student[:name] if student[:name][0] =~ /[DJT]/
# end

# 3 names shorter then 12 characters 
# students.each do |student|
#   puts student[:name] if student[:name].length < 12
# end

# 4 useing loops
# iteration = 0
# while iteration < students.length
#   puts "Index #{iteration + 1} #{students[iteration][:name]}"
#   iteration += 1
# end
# while iteration < students.length
#   puts students[iteration][:name] if students[iteration][:name][0] =~ /[DT]/
#   iteration += 1
# end
# while iteration < students.length 
#   puts students[iteration][:name] if students[iteration][:name].length < 12
#   iteration += 1
# end

# 5 added more data to the students hash
# students.each do |student|
#   puts "#{student[:name]} from #{student[:country]}"
# end

# 6 center() method 
# students.each do |student|
#   puts student[:name].center(35, "-")
# end

# 7 input_students method refactoring
# def input_students
#   puts "*" * 53
#   puts "Please enter the names of the students and the cohort"
#   puts "To finish, just hit return twice"
#   puts "*" * 53
#   # create an empty array
#   students = []
#   # get the first name
#   puts "Please enter the name of the student"
#   name = gets.chomp 
#   if name != ""
#     puts "Please enter the cohort of the student"
#     input_cohort = gets.chomp
#     input_cohort = :default if input_cohort == ""
#   end
#   # while the name is not empty, repeat this code
#   while !name.empty? do
#     # add the student hash to the array
#     students << {name: name, cohort: input_cohort.to_sym}
#     puts "Now we have #{students.count} #{students.count > 1 ? "students" : "student"}"
#     # get another name from the user
#     puts "Please enter the name of the student"
#     name = gets.chomp
#     if name != ""
#       puts "Please enter the cohort of the student"
#       input_cohort = gets.chomp
#       input_cohort = :default if input_cohort == ""
#     end
#   end
#   # return the array of students 
#   if students.empty?
#     puts "No students been entered to database"
#   else
#     students
#   end 
# end
# puts input_students

# 8 grouping selections
# cohort = []
# students.map do |student|
#   cohort << student[:cohort]
# end
# cohort = cohort.uniq
# cohort.map do |ch_val|
#   puts "*" * 10, ch_val, "*" * 10
#   students.each {|student| puts student[:name] if student[:cohort] == ch_val}
# end


# 9 add plural form whuen appropriate
# refer to #7

# 10 chomp alternatives
# .strip .chop

# 11 typo mistakes corection excercise
# def input_students
#   puts "Please enter the names of the students"
#   puts "To finish, just hit return twice"
#   # create an empty array
#   students = []
#   # get the first name
#   name = gets.chomp
#   # while the name is not empty, repeat this code
#   while !name.empty?
#   # add the student hash to the array
#   students << {name: name, cohort: :november}
#   puts "Now we have #{students.count} students"
#   # get another name from the user
#   name = gets.chomp
#   end
#   # return the array of students
#   students
# end

# def print_header
#   puts "The students of my cohort at Makers Academy"
#   puts "-------------"
# end

# def print(students)
#   students.each do |student|
#     puts "#{student[:name]} #{student[:cohort]} cohort"
#   end
# end

# def print_footer(name)
#   puts "Overall, we have #{name.count} great students"
# end

# students = input_students
# print_header
# input_students
# print_footer(students)

# 12 if user input == 0
# refer to #7

# Ruby Project Code 
# def print_header
#   puts "-" * 31
#   puts "The student of Villains Academy"
#   puts "-" * 31
# end

# def print(input_names)
#   input_names.each do |input| 
#     puts "#{input[:name]} (#{input[:cohort]} cohort)"
#   end
# end 

# def input_students
#   puts "Please enter the names of the students"
#   puts "To finish, just hit return twice"
#   # create an empty array
#   students = []
#   # get the first name
#   name = gets.chomp
#   # while the name is not empty, repeat this code
#   while !name.empty? do
#     # add the student hash to the array
#     students << {name: name, cohort: :november}
#     puts "Now we have #{students.count} students"
#     # get another name from the user
#     name = gets.chomp 
#   end
#   # return the array of students 
#   students 
# end

# def print_footer(names)
#   puts "Overall, we have #{names.count} great students" 
# end

# # nothing happens until we call the methods
# students = input_students 
# print_header
# print(students)
# print_footer(students)
