# lets put all students into an array
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Wich of The West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]
def print_header
  puts "-" * 31
  puts "The student of Villains Academy"
  puts "-" * 31
end
def print(names)
  names.each do |name| 
    puts name
  end
end 
def print_footer(names)
  puts "Overall, we have #{names.count} great students" 
end
# nothing happens until we call the methods
print_header
print(students)
print_footer(students)
