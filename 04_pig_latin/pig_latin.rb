def translateWord word
    v = ['a','e','i','o','u']
    out = ''

    if word.index('qu')
        i = word.index('qu')+2
        out = word[i,word.length] + word[0,i] + 'ay'
    elsif
        word.each_char do |c|
            if v.include? c
                i = word.index(c)
                out = word[i,word.length] + word[0,i] + 'ay'
                break
            end 
        end
    end

    return out
end

def translate words
    arr = words.split
    arr.each_index do |i|
        arr[i] = translateWord(arr[i])
    end
    return arr.join(' ').strip
end
