
def anagrams
    
    word = ""
    first_line = true
    anagrams = 0
    File.open("anagrams.txt").each do |line|
        line = line.chomp
        if first_line 
            word = line.downcase.split("").sort do |a,b|
                a <=> b
            end
            first_line = false
        else
            a = line.downcase.split("")

            a = a.sort do |c,b|
                c <=> b
            end

            if a == word
                anagrams += 1
            end
        end
    end
    print anagrams
end

anagrams