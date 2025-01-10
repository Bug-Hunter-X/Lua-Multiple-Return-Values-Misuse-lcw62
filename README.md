# Lua Multiple Return Values Misuse

This repository demonstrates a common error in Lua programming related to the misuse of multiple return values in functions, specifically when handling errors. The `foo` function returns both a result and an error message.  If you don't handle both return values correctly, errors may be silently ignored leading to unexpected behavior.

## Bug
The `bug.lua` file contains the buggy code that demonstrates the error: the final call to `foo` assigns only one variable to capture the returned values, while the function returns two values causing a runtime error.

## Solution
The `bugSolution.lua` file provides a corrected version of the code. It properly handles both the result and the error message. This ensures that error conditions are correctly identified and reported.

## How to Reproduce
1. Clone this repository.
2. Navigate to the repository's directory.
3. Run the script `bug.lua` using a Lua interpreter (e.g., `lua bug.lua`).
4. Observe the runtime error.  Then run `bugSolution.lua` to see how to solve it.

## Lessons Learned
Always carefully check the return values of functions, especially those designed to handle errors or return multiple values.  Incorrect handling can lead to difficult-to-debug runtime errors.