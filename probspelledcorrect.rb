

    def probspell(string)
    bigrams = ["TH","HE","IN","ER","TA","AN","RE","ON","AT","EN","ND","TI","ES","OR","TE","OF","ED","IS","IT","AL","AR","ST","TO","NT","NG","SE","HA","AS","OU","IO","LE","VE","CO","ME","DE","HI","RI","RO","IC","NE","EA","RA","CE","LI","CH","LL","BE","MA","SI","OM","UR"]
    string = string.upcase
    (string.size-1).times do |i|
        gram = string[i] + string[i+1]
        #print gram
        if !bigrams.include?(gram)
            return false
        end
    end
    return true
end


File.open("spell.txt").each do |line|
    line = line.chomp
    puts probspell(line)
end