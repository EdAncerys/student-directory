# exercise 9 adding an interactive menu

@students = [] # an emty array accssible to all methods
@devider_1 = "-" * 45
@devider_2 = "*" * 45

def try_load_students
  filename = ARGV.first # first argument from the command line
  return if filename.nil? # leaves the method if it isn't given
  if File.exists?(filename) # if it exists
    load_students(filename)
    p "Loaded #{@students.count} names from #{filename} #{self}", @devider_2
  else # if it doesn't exist
    p @devider_1, "Sorry, #{filename} doesn't exist.", @devider_1
    exit # quit the program
  end
end

def save_students
  puts "Enter file name to save"
  save_to_file = STDIN.gets.chomp
  # open the file for writing
  file = File.open(save_to_file, "w")
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  puts "Student names saved to file"
  file.close
end

def load_user_selection
  puts "Enter *.csv file name from where to load the data from"
  puts "Hit return to skip"
  file_to_load = Dir.glob("*.{csv,txt}")
  p @devider_2, file_to_load, @devider_2
  path = STDIN.gets.chomp
end

def load_students(filename = "students.csv")
  if !File.exist?(filename)
    puts "File not loaded"
  else
    File.open(filename, "r") do |file|
      file.readlines.each do |line|
        name, cohort = line.chomp.split(',')
        @students << {name: name, cohort: cohort.to_sym}
      end
      p @devider_2, "* Name list uploaded from #{filename} *", @devider_2
    end
  end
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  # get the first name
  name = STDIN.gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the student hash to the array
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    # get another name from the user
    name = STDIN.gets.chomp 
  end
end

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def print_menu
  puts "*" * 35
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to student.csv"
  puts "4. Load the list form students.csv"
  puts "9. Exit" 
  puts "*" * 35
end

def show_students
  print_header
  print_student_list
  print_footer
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    save_students
  when "4"
    load_students
  when "9"
    puts "Thanks and see you soon!"
    exit # this will cause the program to terminate
  else
    puts "I don't know what you meant, try again"
  end
end

def print_header
  p @devider_1, "The student of Villains Academy", @devider_1
end

def print(input_names)
  input_names.each do |input| 
    puts "#{input[:name]} (#{input[:cohort]} cohort)"
  end
end 

def print_student_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students" 
end

try_load_students
load_students(load_user_selection)
interactive_menu
