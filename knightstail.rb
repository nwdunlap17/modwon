def move(x,y,endx,endy)
    possible_moves = []
    possible_moves << [x,y]
    turns = 0
    while true
        new_moves = []
        turns += 1
        possible_moves.each do |pos|
            new_moves << [pos[0]+2,pos[1]+1]
            new_moves << [pos[0]+2,pos[1]-1]
            new_moves << [pos[0]+1,pos[1]+2]
            new_moves << [pos[0]+1,pos[1]-2]
            new_moves << [pos[0]-1,pos[1]+2]
            new_moves << [pos[0]-1,pos[1]-2]
            new_moves << [pos[0]-2,pos[1]+1]
            new_moves << [pos[0]-2,pos[1]-1]
        end
        if new_moves.include?([endx,endy])
            return turns
        end
        possible_moves = new_moves
    end
end

puts move(0,0,2,1)
puts move(0,0,3,3)
