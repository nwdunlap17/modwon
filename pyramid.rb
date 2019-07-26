def pyramid(num)

    num.times do |i|
        printoutline(i+1)
    end
    (num-1).times do |i|
        printoutline(num-1-i)
    end
    print "\n"
    


end

def printoutline(num)
    num.times do |i|
        print i+1
    end
    (num-1).times do |i|
        print num-i-1
    end
    print "\n"
end


File.open("pyramid.txt").each do |line|
    line = line.chomp.to_i
    pyramid(line)
end