def prime?(integer)
   #prime number is only wholy divisible in itself and the integer one
     return true if integer == 2
     return false if integer < 1 || integer == 1
 for value in (2...integer)
     if integer % value == 0
       return false
     end
 end
 true
end

def primefactor(num)#[2,3,5,7,11,13,17,19,23,29,31,37,41,43]
    primes = []
    i = 2
    while i < num
        if prime?(i)
            primes << i
        end
        i += 1
    end
    factors = []
    while true
        primes.each do |prime|
            if num % prime == 0
                factors << prime
                num = num / prime
            end
        end
        if num == 1
            return factors
        end
    end
end

def format(num)
    factors = primefactor(num)
    factors = factors.sort do |a,b|
        b <=> a
    end
    puts factors.join("*")
end


lines = ARGF.read.split("\n")
lines.each do |line|
    puts line
    format(line.to_i)
end