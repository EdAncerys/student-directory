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
puts "-" * 31
puts "The student of Villains Academy"
puts "-" * 31
students.each {|student| puts student}
# finaly we print the total number of students 
puts "Overall, we have #{students.count} great students"
