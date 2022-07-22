dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(sentence, dictionary)
    sentence.downcase!
    p "sentence downcase"
    p sentence
    string_array = sentence.split
    p "string array"
    p string_array
    match_array = []
    p match_array
    count_array = []
    p count_array

    #this works because it is a nested for loop
    dictionary.each do |dictionary_element|
        if string_array.any? {|string_element|string_element.include?(dictionary_element)}
        match_array.push(dictionary_element)
        p "match array pushed"
        p match_array
        end
        count = string_array.count {|string_element|string_element.include?(dictionary_element)}
        count_array.push(count)
        p "count_array before deleted 0s"
        p count_array
        count_array.delete(0)
        p "count array deleted 0s"
        p count_array
    end
    p match_array
    p count_array
    result = match_array.zip(count_array).to_h
    p "The result is:"
    p result

end

substrings("I am going down it is low and sit", dictionary)




