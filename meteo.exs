defmodule Meteo do
	
	
    
    def pluie([]), do: []

    def pluie([[_, _, _, pluie] | tail]) do
     	 [[pluie] | pluie(tail)] 
     end
     def total_pluie() do
     	pluie(test_data)
     	|>List.flatten
     	|>Enum.sum

    end 

    def endroit_27([]), do: []
    def endroit_27([[temps, 27, temp, pluie] | tail]) do 
      [[temps, 27, temp, pluie] | endroit_27(tail)]
      
   end
    def endroit_27([_ | tail]), do: endroit_27(tail)
    	
         def test_data do
		[
			[1234, 26, 15, 0.125],
			[1235, 27, 16, 0.45],
			[1236, 28, 21, 0.25],
			[1237, 26, 19, 0.081],
			[1238, 27, 17, 0.468],
			[1239, 28, 15, 0.60],
			[1240, 26, 22, 0.095],
			[1241, 27, 21, 0.05],
			[1242, 28, 24, 0.03],
			[1243, 26, 17, 0.025]
        ]

   end  

end  
  
