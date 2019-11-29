def add(a,b)
    a+b
end

def subtract(a,b)
    a-b
end

def multiply(*args)
    sum = 1
    args.each do |item|
        sum *= item
    end
    return sum
end

def divide(a,b)
    a/b
end

def sum(arr)
    if arr.length == 0
        return 0
    end
    sumVal = 0
    arr.each do |item|
        sumVal += item
    end
    return sumVal
end

def power(a,b)
    a**b
end

def factorial(a)
    if a == 0 
        return 1
    end
    sum = 1
    a.times do |it|
        sum *= (a-it)
    end
    return sum
end
