def substrings(str, dictionary=nil)
    downcased = str.downcase.gsub(/[,!?]/, "")
    arr = downcased.gsub(/'s/, "").split(" ")
    result = {}
    dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

    dictionary.each_with_index do |word, i|
        result[word] = 0 
       
        arr.each do |word2|
           if ( word2 =~ /#{word}/ ) 
               result[word] +=1
            end
        end
    end
    result.select {|a,b| b > 0}
end

print substrings("Howdy partner, sit down! How's it going?")