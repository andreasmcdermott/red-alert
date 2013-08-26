var month, day, hour, minute;
if(current_month < 10)
    month = string(0) + string(current_month);
else
    month = string(current_month);
if(current_day < 10)
    day = string(0) + string(current_day);
else
    day = string(current_day);
if(current_hour < 10)
    hour = string(0) + string(current_hour);
else
    hour = string(current_hour);
if(current_minute < 10)
    minute = string(0) + string(current_minute);
else
    minute = string(current_minute);
highscore_add(string(current_year) + month + string(day) + string(hour) + string(minute), score);
