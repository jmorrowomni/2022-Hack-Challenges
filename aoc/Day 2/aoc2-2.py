# A/X = Rock (1 pt)
# B/Y = Paper (2 pts)
# C/Z = Scissors (3 pts)

# X = Lose
# Y = Draw
# Z = Win


# Win = 6 pts, Tie = 3 pts, Loss = 0 pts



total = 0

def choices(p1, p2):
    match p1, p2:
        case "A", "X":
            return "Z"
        case "A", "Y":
            return "X"
        case "A", "Z":
            return "Y"
        case "B", "X":
            return "X"
        case "B", "Y":
            return "Y"
        case "B", "Z":
            return "Z"
        case "C", "X":
            return "Y"
        case "C", "Y":
            return "Z"
        case "C", "Z":
            return "X"

def score(p1, p2):
    match p1, p2:
        case "A", "X":
            return 4
        case "A", "Y":
            return 8
        case "A", "Z":
            return 3
        case "B", "X":
            return 1
        case "B", "Y":
            return 5
        case "B", "Z":
            return 9
        case "C", "X":
            return 7
        case "C", "Y":
            return 2
        case "C", "Z":
            return 6
        

def process(line):
    elf1 = line[0]
    elf2 = line[-2]
    global total
    play = choices(elf1, elf2)
    total = total + score(elf1, play)

with open('aoc\Day 2\day2input.txt') as f:
    for line in f:
        process(line)

print(f'The winner has {total} points!')