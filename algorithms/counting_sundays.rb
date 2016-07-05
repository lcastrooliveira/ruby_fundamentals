#How many sundays on first day of the month exist in the 20th century ?
require 'date'

A_DAY = 86400

start_date = Time.local(1901)
end_date = Time.local(2_000,12,31)
sunday_counter = 0

while end_date >= start_date
  #%A check name day of the week
  #%d check day of the month
  if end_date.strftime("%A") == "Sunday" && end_date.strftime("%d") == "01"
    sunday_counter += 1
  end
  end_date -= A_DAY #subtract 1 day(in seconds from a date)
end

p sunday_counter
