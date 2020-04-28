katz_deli = []

def line(deli) #def method "line" with parameter of "deli" which will be an array of people in line
  if deli.empty? #setup a conditional based on if the line is empty
    puts "The line is currently empty." #if the conditional comes back true
  else #if the conditional comes back false
    line_list = deli.map.with_index(1) { | person, i | " #{i}. #{person}" }
    #map an array and assign to variable "line_list"
    #use .map.with_index instead of map_with_index
      #in order to start the indexing at 1
    puts "The line is currently:#{line_list.join("")}"
    #output a string and using string interpolation
      #insert the joined array 
  end #close conditional
end #close method



def take_a_number(deli, person)
  deli.push(person)

  puts "Welcome, #{person}. You are number #{deli.index(person) + 1} in line."
end

def now_serving(deli)
  if deli.empty?
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli[0]}."
    deli.shift
  end
end
