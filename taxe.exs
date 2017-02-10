defmodule Taxes do
   def sum(achats), do: sum(achats, 0)

   def sum([], total),  do: total

   def sum([head | tail], total), do: sum(tail, head+total) 
   
   def total(x), do: x*0.15

end