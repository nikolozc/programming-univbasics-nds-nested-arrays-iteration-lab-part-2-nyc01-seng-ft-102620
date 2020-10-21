def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  new_array = []
  outer = 0 
  inner = 0 
  while (outer < src.size) do 
    min = src[outer][inner]
    while(inner < src[0].size) do 
      if(min > src[outer][inner]) 
        min = src[outer][inner]
      end 
      inner+=1
    end 
    outer+=1 
    inner = 0
    new_array << min
  end 
  return new_array
end