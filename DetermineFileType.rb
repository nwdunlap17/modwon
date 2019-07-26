def filetype
    python_points = 0
    ruby_points = 0
    java_points = 0
    File.open('filetype.txt').each do |line|
        splitline = line.downcase.chomp
        if splitline.include?("print")
            python_points += 1
        end
        if splitline.include?("import")
                python_points += 1
        end
        if splitline.include?("def")
            python_points += 1
            ruby_points += 1 
        end
        if splitline.include?("end")
        ruby_points += 1 
        end
        if splitline.include?(".new")
            ruby_points += 1 
        end

        if splitline.include?("\{")
           java_points += 1 
        end
        if splitline.include?("function")
            java_points += 1 
        end
        if splitline.include?("=>")
            java_points += 1 
        end
    
    end
    if python_points > ruby_points && python_points > java_points
        puts "python!"
    end
    if ruby_points > python_points && ruby_points > java_points
        puts "ruby!"
    end
    if java_points > ruby_points && java_points > python_points
        puts "java!"
    end

end

filetype