##
# This is will determine the 333rd prime number that both begins and ends with a 3.
# Here, I am using a custom method to determine if the number is prime.
# I am aware of the prime?() method available in the Ruby Prime class, but this was not used
# as it is not in the spirit of the question asked.
# Author: Thomas Harding
##

# Declare variables
$count = 0
$numOfPrime = 0

# Custom Method to determine if a number is prime. returns true, or false.
def isPrime(wnTestNumber)
    wbReturn = true
    for i in (2..Math.sqrt(wnTestNumber).round).step(1) do
        if wnTestNumber%i == 0
            wbReturn = false
        end
    end
    return wbReturn
end

# Enter while loop
while true
    # Declare and increment loop variables
    $count+=1
    $testPrime = true
    
    # Check if the number begins and ends with a 3
    # Doing this first to speed the process up
    if $count.to_s.split('').first == '3' && $count.to_s.split('').last == '3'    
        # Run prime number test to the square root of the current number.
        # This should speed things up, as we dont need to test every number
        $testPrime = isPrime($count)
        # If the number is prime, increment the number of primes
        if $testPrime == true
            $numOfPrime += 1
        end
    end
    # If we finally have the 333rd prime number, print the result and break the loop
    if $numOfPrime == 333
        puts "the 333rd prime number is: %d" % $count
        break
    end
end
