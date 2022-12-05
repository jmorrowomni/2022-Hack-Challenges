stack0 = ["S","P","H","V","F","G"]
stack1 = ["M","Z","D","V","B","F","J","G"]
stack2 = ["N","J","L","M","G"]
stack3 = ["P","W","D","V","Z","G","N"]
stack4 = ["B","C","R","V"]
stack5 = ["Z","L","W","P","M","S","R","V"]
stack6 = ["P","H","T"]
stack7 = ["V","Z","H","C","N","S","R","Q"]
stack8 = ["J","Q","V","P","G","L","F"]

stacks = [stack0,stack1,stack2,stack3,stack4,stack5,stack6,stack7,stack8]

File.foreach("./day5input.txt") { 
    |line| 
    command = line.split(/ /,-1)
    i = 0
    while i < command[1].to_i
        cube = stacks[(command[3].to_i - 1)].shift
        stacks[(command[5].to_i - 1)].unshift(cube)
        i = i+1
    end
}

for x in 0..8 do
    print "#{stacks[x][0]}"
end

