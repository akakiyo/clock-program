require './get-num.rb'
require "date"

def sliceNum(num)
    tens_place = (num/10) %10
    ones_place = (num/1) %10
    return tens_place,ones_place
end
print "\x1b[2J"

loop{
    nowTime = DateTime.now
    hour_tens_place,hour_ones_place = sliceNum(nowTime.hour)
    minute_tens_place,minute_ones_place = sliceNum(nowTime.minute)
    seconde_tens_place,second_ones_place = sliceNum(nowTime.second)
    hour_tens_place_str = getNum(hour_tens_place).split(/\R/)
    hour_ones_place_str = getNum(hour_ones_place).split(/\R/)
    minute_tens_place_str = getNum(minute_tens_place).split(/\R/)
    minute_ones_place_str = getNum(minute_ones_place).split(/\R/)
    seconde_tens_place_str = getNum(seconde_tens_place).split(/\R/)
    second_ones_place_str = getNum(second_ones_place).split(/\R/)
    print "\x1b[1;1H"
    i = 0
    loop{
        if i > 11 then
            break
        end
        # str = str1[i] + str2[i]
        if i==3||i==4||i==7||i==8 then
            str ="#{hour_tens_place_str[i]}#{hour_ones_place_str[i]}時時    #{minute_tens_place_str[i]}#{minute_ones_place_str[i]}分分    #{seconde_tens_place_str[i]}#{second_ones_place_str[i]}"
        else
            str ="#{hour_tens_place_str[i]}#{hour_ones_place_str[i]}        #{minute_tens_place_str[i]}#{minute_ones_place_str[i]}        #{seconde_tens_place_str[i]}#{second_ones_place_str[i]}"
        end
        puts str
        i+=1
    }
}
