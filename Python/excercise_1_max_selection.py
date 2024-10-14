#Write a Python function to find the maximum element in a list of numbers without using the built-in `max()` function.
#If the input list is None or it is empty list, the return value must be None.

# Requirements:
# - Returns greatest element of a list of numbers
# - In case of None input returns None
# - In case of Empty input string, returns None

def get_max(numbers:list) -> int:

# list input
    if numbers is None or len(numbers) == 0:
        return None
    
# comparing the max value i guess this is it
    max_num = numbers[0]

# itareting through the list and trying comparing each max values 
    for num in numbers:
        if num > max_num:
            max_num = num 

# return the founded max value
    return max_num





