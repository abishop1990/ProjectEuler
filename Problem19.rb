=begin
Project Euler Problem 19
Written By Alan Bishop 6/7/14


You are given the following information, but you may prefer to 
do some research for yourself.

    1 Jan 1900 was a Monday.
    Thirty days has September,
    April, June and November.
    All the rest have thirty-one,
    Saving February alone,
    Which has twenty-eight, rain or shine.
    And on leap years, twenty-nine.
    A leap year occurs on any year evenly divisible by 4, but 
    not on a century unless it is divisible by 400.

How many Sundays fell on the first of the month during the 
twentieth century (1 Jan 1901 to 31 Dec 2000)?

=end

start = Time.now

def isLeapYear?(year)
    if(year%100 == 0)
        return (year%400 == 0)
    end
    return (year%4 == 0)
end


def getDaysInMonth(month,leapYear)
    if month == 2
        if leapYear
            return 29
        else
            return 28
        end
    elsif month == 4 || month == 6 || month == 9 || month == 11
        return 30
    else
        return 31
    end
    return 30
end

def nextDayOfWeek(curDay)
    if curDay == 7
        return 1
    else
        return curDay+1
    end
end


dayOfWeek = 2 #1 = Sunday..7 = Satuday
month = 1 #1-12 standard
year = 1900
sundays = 0

while year<2001 do
    daysInMonth = getDaysInMonth(month,isLeapYear?(year))
    sundays += 1 if dayOfWeek == 1 && year>1900 #Careful, we don't want to count 1900 =/
    #puts "First of month of #{month}/#{year} is #{dayOfWeek}, there are #{daysInMonth} in the month."
    for dayOfMonth in 1..daysInMonth do
        #puts "Today is #{month}/#{dayOfMonth}/#{year}, day of week == #{dayOfWeek}"
        dayOfWeek = nextDayOfWeek(dayOfWeek)
    end
    
    if month == 12
        month = 1
        year += 1
    else
        month += 1
    end
end


puts "There were #{sundays} Sundays on the first of the month in the 20th century."

puts "Elapsed Time: #{Time.now-start} seconds"
