def find_shortest_string(arr):
    shortest = arr[0]

    for string in arr[1:]:
        if len(string) < len(shortest):
            shortest = string

    return shortest

if __name__ == '__main__':
    print("Expecting: 'a'")
    print("=>", find_shortest_string(['aaa', 'a', 'bb', 'ccc']))

    print()

    print("Expecting: 'hi'")
    print("=>", find_shortest_string(['cat', 'hi', 'dog', 'an']))

    print()

    print("Expecting: 'lily'")
    print("=>", find_shortest_string(['flower', 'juniper', 'lily', 'dadelion']))

    # Don't forget to add your own!

    # BENCHMARK HERE
##Pseudocode
FUNCTION find_shortest_string(arr)
    SET shortest = arr[0]

    FOR i = 1 to length of arr - 1
        IF length of arr[i] < length of shortest
            SET shortest = arr[i]
        END IF
    END FOR

    RETURN shortest
END FUNCTION
# Please add your pseudocode to this file
# And a written explanation of your solution

#Pseudocode: UTheFUNCTION find_shortest_string(arr): This line declares a function called find_shortest_string that takes an array arr as input.

#SET shortest = arr[0]: This line initializes a variable called shortest and sets it to the first element of the array. This assumes that the array is non-empty.

#FOR i = 1 to length of arr - 1: This line starts a loop that iterates from the second element of the array (i = 1) to the last element of the array (length of arr - 1). The loop variable i represents the index of each element in the array.

#IF length of arr[i] < length of shortest: This line checks if the length of the current element (arr[i]) is less than the length of the current shortest string (shortest).

#SET shortest = arr[i]: If the condition in the previous line is true, this line updates the value of shortest to be the current element (arr[i]), indicating that a new shortest string has been found.

#END IF: This line marks the end of the if statement.

#END FOR: This line marks the end of the loop.

#RETURN shortest: This line returns the value of shortest as the output of the function.

#END FUNCTION: This line marks the end of the function.
