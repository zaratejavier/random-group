students = ["Leveille, Andre", "AshWorth, Ryan",
 "Biddinger, Caden", "Mbia, Arsene", "Boyden, Lindsay",
  "DelaCruz, Joey", "Dunshee, Kyle", "Riches, James",
  "Smith, Shawn", "Sultan, Maxwell", "Zarate, Javier"]

  # my task is to create a group randomizer
  students_formated = students.map do |student|
    #need to separate out first and last name from original string
    name_arr = student.split(',')
    first = name_arr[1].strip
    last = name_arr[0].strip

    {first_name: first, last_name: last}
  end

  p students_formated

  #create a new array of hashes with keys first_name and last_name


  #with the newly created array i want to randomly people and pull and 
  #assign into group

  #print out groups in a slack friendly format