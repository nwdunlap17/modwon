def sum
    add = 0
    File.open("numbers.txt").each do |line|
        add += line.to_i
    end
    puts add
end

sum