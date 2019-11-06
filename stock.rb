def stock_picker(arr)
    $values = {}
    arrrev = arr.sort.reverse
    for i in 0..arr.length-1 do
        for j in i+1..arr.length-1 do
            temp = arr[j] - arr[i]
            str = i.to_s + j.to_s
              if temp > 0 
               $values[str] = temp
              end
        end
    end
    print arr == arrrev ? "Stock is going down, don't buy now" : $values.key($values.values.max).split("")
end

stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([4,6,9,34,28,12,2,16,8,44])
stock_picker([8, 5, 3, 6 ,8, 56, 43, 76, 54, 9])
stock_picker([6, 2, 7, 3, 1, 7, 3, 8, 4, 9])
stock_picker([99, 88, 77, 66, 55, 44, 33, 22, 11, 99])
stock_picker([100, 99, 30, 22, 7, 4])