import time

def find_shortest_string(list):

    # THE LONGER WAY OF DOING THE SAME THING AS LINE 17

    '''
    shortest = list[0]

    for item in list:
        if len(item) < len(shortest):
            shortest = item

    return shortest
    '''
    
    return min(list, key = len)

if __name__ == '__main__':


    print("Expecting: 'a'")
    print(find_shortest_string(['aaa', 'a', 'bb', 'ccc']))

    print("")

    print("Expecting: 'hi'")
    print(find_shortest_string(['cat', 'hi', 'dog', 'an']))

    print("hi")

    print("Expecting: 'lily'")
    print(find_shortest_string(['flower', 'juniper', 'lily', 'dandelion']))

    print("Lily")

    print("Expecting: 'cat'")
    print(find_shortest_string(['cat']))

    # BENCHMARK HERE

    start_time = time.time()

    for i in range(1000):
        find_shortest_string(['flower', 'juniper', 'lily', 'dandelion'])

    avg_time = ( time.time() - start_time ) / 1000

    print(avg_time)

#Pseudocode: The input list can be empty The input list can contain duplicate strings. The input list can contain strings of different lengths
##Pseudocode: Initialize a variable shortest to the first string in the input list
##Iterate through each string item in the input list starting from the second string
#If the length of item is less than the length of shortest, update shortest to item
#Return shortest
###Rewrite the problem in your own words
##Validate that you understand the problem
##Write your own test cases
##Pseudocode
##