# Function to find shortest distance

class Robot
  def movement(m)
     @m=m
     x=0
     y=0 
     # Traverse the instruction string
     for i in m do 
        if (i[0] == 'F')
       	   x = x +i[1].to_i
  	elsif(i[0] == 'B')
    	   x = x - i[1].to_i
  	elsif(i[0] == 'L')
     	   y = y - i[1].to_i
  	elsif(i[0] == 'R')
     	   y = y + i[1].to_i
        end
      end
    final=x.abs+y.abs
    puts "The minimum position required to go to the starting point is #{final}"
    end
  end

#Driver code
#Get input from the user

obj=Robot.new
puts "Enter the direction"
m=gets.chomp.split
obj.movement(m)

