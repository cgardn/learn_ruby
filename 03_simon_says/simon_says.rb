def echo str
    str
end

def shout str
    str.upcase
end

def repeat(str, num=2)
    ("#{str} "*(num)).strip
end

def start_of_word(str, num=1)
    if str.length < 1
        return
    end

    str[0,num]
end

def first_word(str)
    str.split(' ')[0]
end

def titleize(str)
    little_words = ['and','or','in','the','over']
    str = str.split(' ')
    str.each_index do |i|
        if (i == 0 || !little_words.include?(str[i]))
            str[i] = str[i].capitalize
        end
    end
    str.join(' ')
end
