#this code runs, but does not yet add the starting hourly wage of the user to the total outcome.


@tipsEarned = 0
@hoursWorked = 0.0
@allTips = []
@allHours = []

def askForValues
  #Gets the hours worked in a day from the user.
  puts "\n How many hours did you work today? \n"
  @hoursWorked = gets.to_f
  @allHours.push(@hoursWorked)

  #Gets the total tips made in a shift fromt the user.
  puts "How much did you make in tips today? \n"
  @tipsEarned = gets.to_f
  @allTips.push(@tipsEarned)
  
  
 @averageTips = @allTips.reduce(0, :+) / @allTips.length
 @hourlyWage = @allTips.reduce(0, :+) / @allHours.reduce(0, :+)
  
puts "\n Your average tips equal $#{@averageTips.round(2)} and your hourly wage is $#{@hourlyWage.round(2)}. \n"
end

while (@allTips.length < 31)
  askForValues
end
