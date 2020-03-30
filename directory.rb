# lets put all students into an array
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Wich of The West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]
def print_header
  puts "-" * 31
  puts "The student of Villains Academy"
  puts "-" * 31
end
def print(input_names)
  input_names.each do |input| 
    puts "#{input[:name]} (#{input[:cohort]} cohort)"
  end
end 
def print_footer(names)
  puts "Overall, we have #{names.count} great students" 
end
# nothing happens until we call the methods
print_header
print(students)
print_footer(students)
