module LeapYear (isLeapYear) where

isLeapYear y = rem y 4 == 0 && (rem y 100 /= 0 || rem y 400 == 0)
