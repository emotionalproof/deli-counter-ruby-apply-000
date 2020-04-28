katz_deli = []

def line(deli) #method "line" with parameter of "deli" which will be an array of people in line
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



def take_a_number(deli, person) #method with two parameters:
    #the deli array and the name of person that will now enter the queue
  deli.push(person) #push function to add the "person" to the end of the given deli queue

  puts "Welcome, #{person}. You are number #{deli.index(person) + 1} in line." #or deli.length
  #print a string and use interpolation to insert the person and the position
  #the second interpolation uses the .index function to determine the index
    #of that person
end #close method

def now_serving(deli) #method with one parameter
  if deli.empty? #use .empty? function to determine if the array is empty
    puts "There is nobody waiting to be served!" #if true, print
  else #if the conditional comes back false
    puts "Currently serving #{deli[0]}." #print a string and use interpolation to insert the person at the front of the line
    deli.shift #use shift function to remove the person at the front
  end #close conditional
end #close method
