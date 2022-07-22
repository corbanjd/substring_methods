def substring(string, dictionary)
        hash = {}
        string_array = string.downcase.split
        string_array.each do |string_element|
        dictionary.each   do |dictionary_element|
            if string_element.include?(dictionary_element)
                if hash.has_key?(dictionary_element)
                    hash[dictionary_element] +=1
                else hash[dictionary_element]=1
            end
        end
    end
end
    p hash
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
strange_sentence = "Hi am so cool I swear! Sit down partner, and I'll tell you all about it. Way down below in the city I blew a horn so loud everyone could hear me!"
substring(strange_sentence, dictionary)





