students = ["Leveille, Andre", "AshWorth, Ryan", "Biddinger, Caden", "Mbia, Arsene", "Boyden, Lindsay", "DelaCruz, Joey", "Dunshee, Kyle", "Riches, James", "Smith, Shawn", "Sultan, Maxwell", "Zarate, Javier"]
# my task now is to create a group randomizer
# create a new list w array of hashes with keys fist_name and last_name
students_formated = students.map do |student|
  # need to seperate out first and last from original string
  name_arr = student.split(",")
  first = name_arr[1].strip
  last = name_arr[0].strip
  { first_name: first, last_name: last }
end 

# with the newly create array i want to randomly select people and pull and assing into groups
#shuffle stundents
students_formated.shuffle!
# {name: 'group1', memebers: [students_formated.pop, students_formated.pop ]}
groups = []
5.times do |i|
  groups.push({ name: "group#{i + 1}", members: [students_formated.pop, students_formated.pop] })
end

# here we need to handle last person since we have a odd number
# randomly select a group and and add last student to members
index = rand(groups.size)
groups[index][:members].push(students_formated.pop)
# p groups
# p students_formated.size
# print outadd groups in a slack friendly format

groups.each do |group|
  puts group[:name]
  # this an array of members
  puts "--------"
  group[:members].each do |member|
    puts "#{member[:first_name]} #{member[:last_name]}"
  end
  puts "xxxxxx"
end
# changed main.rb