count = 0

def process(line):
    set1 = line.split(',')
    #print(set1)
    contained(set1[0],set1[1])


def contained(set1, set2):
    lower1 = (int)(set1.split('-')[0])
    lower2 = (int)(set2.split('-')[0])
    upper1 = (int)(set1.split('-')[1])
    upper2 = (int)(set2.split('-')[1])

    print(lower1)
    print(lower2)
    print(upper1)
    print(upper2)

    global count
    
    if (lower1 <= lower2):
        if (upper1 >= upper2):
            count +=1
            return

    if (lower2 <= lower1):
        if (upper2 >= upper1):
            count +=1

with open('aoc\Day 4\day4input3.txt') as f:
    inputs = f.read().splitlines()
    for line in inputs:
        process(line)

print(f'The number of overlapping groups is {count}')