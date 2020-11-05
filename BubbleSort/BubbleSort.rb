def bubble_sort(arr)
  #Keep looping through array while there are higher numbers to the left of lower numbers
  while arr.each_cons(2).any? {|a, b| a > b} 
    #Loop through array 
    arr.each_with_index do |num, i|
      #End loop if index is equal to the length of the array
      break if arr.size - 1 == i 
      #If the index value is higher than the next value in the array, swap them
      if num > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
      else
        num
      end
    end    
  end
  p arr
end

user_arr = [4,3,78,2,0,2]

#Call function
bubble_sort(user_arr)

