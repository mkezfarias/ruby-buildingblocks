def stock_picker(arr)
    $values = {}
    for i in 0..arr.length-1 do
        for j in i+1..arr.length-1 do
            temp = arr[j] - arr[i]
            str = i.to_s + j.to_s
              if temp > 0 
               $values[str] = temp
              end
        end
    end
    print $values.key($values.values.max).split("")
end

stock_picker([17,3,6,9,15,8,6,1,10])