# Ruby Quine
str="str=;puts str[0,4]+34.chr+str+34.chr+str[4..-1]";puts str[0,4]+34.chr+str+34.chr+str[4..-1]
#=> str="str=;puts str[0,4]+34.chr+str+34.chr+str[4..-1]";puts str[0,4]+34.chr+str+34.chr+str[4..-1]

file = File.open("directory.rb")
  file.readlines.each do |line|
  puts line
end
