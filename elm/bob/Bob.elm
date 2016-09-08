module Bob exposing (..)
import String
import Char
import Regex exposing (contains, regex)

hey: String -> String
hey question =
  if String.trim question == ""
    then "Fine. Be that way!" else
  if contains (regex "^[0-9!,.\\s]+$") question
    then "Whatever." else
  if contains (regex "^([^a-z])+[^?]$") question
    then "Whoa, chill out!" else
  if contains (regex "^[A-Z?!,.\\s]+$") question
    then "Whoa, chill out!" else
  if String.endsWith "?" question
    then "Sure." else
  "Whatever."
