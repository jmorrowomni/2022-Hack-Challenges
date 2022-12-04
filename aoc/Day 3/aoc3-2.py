from itertools import islice
total = 0

def letterValue(ltr):
    if ord(ltr) >= 97:
        return (int)(ord(ltr) - ord("a") + 1)
    else:
        return (int)(ord(ltr) - ord("A") + 27)

def process(rucksack):
    for items in rucksack[0]:
        if items in rucksack[1] and items in rucksack[2]:
            matchChar(items)
            global total
            total = total + letterValue(items)
            break

def matchChar(letter):
    return letterValue(letter)


with open('aoc\Day 3\day3input.txt') as f:
    while True:
        next_n_lines = list(islice(f, 3))
        if not next_n_lines:
            break       
        process(next_n_lines)

print(f"The sum of the priorities is {total}")