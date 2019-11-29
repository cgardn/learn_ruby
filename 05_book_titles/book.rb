class Book

    attr_reader :title

    def title=(t)
        @title = titleFormat(t)
    end

    def titleFormat(t)
        no_list = ['a','an','the','and','in','of','over','at']
        t = t.split
        t[0] = t[0].capitalize
        out = t[1,t.length].map do |x|
            if (!no_list.include?(x))
                x.capitalize
            else
                x.downcase
            end
        end
        out.unshift(t[0])
        return out.join(' ')
    end
end