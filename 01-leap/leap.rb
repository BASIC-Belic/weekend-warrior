
# on every year that is evenly divisible by 4
# except every year that is evenly divisible by 100
# unless the year is also evenly divisible by 400

def leap_year?(year = nil)
  if year % 4 == 0 && year % 100 != 0
    return true
  elsif year % 400 == 0
    return true
end
