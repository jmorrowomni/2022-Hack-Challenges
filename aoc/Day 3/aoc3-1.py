total = 0

def letterValue(ltr):
    if ord(ltr) >= 97:
        return (int)(ord(ltr) - ord("a") + 1)
    else:
        return (int)(ord(ltr) - ord("A") + 27)

def process(rucksack):
    halves = (len(rucksack) + 1) // 2
    ruck = rucksack[:halves]
    sack = rucksack[halves:]
    global total
    total = total + matchChar(ruck,sack)

def matchChar(first,second):
    for c in first[0:]:
        for z in second[0:]:
            if (c == z):
                return letterValue(c)

with open('aoc\Day 3\day3input.txt') as f:
    inputs = f.read().splitlines()
    for line in inputs:
        process(line)

print(f"The sum of the priorities is {total}")