module Raindrops exposing (..)
import String

raindrops : Int -> String
raindrops count =
  let allChecks count =
    String.concat [result count 3 "Pling", result count 5 "Plang", result count 7 "Plong"]
  in
    if String.isEmpty(allChecks count) then toString count else allChecks count

result count factor sound =
  if rem count factor == 0 then sound else ""
