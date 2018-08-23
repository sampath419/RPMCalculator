#Reverse Polish Notation calculator

This is an implementation of a RPN (also known as postfix notation) calculator.
In a nutshell, this notation consists of operands followed by their operators. As opposed to express an operation like this...

(3 + 4) * 7 - 1
...in reverse Polish notation it would look like this:

7 3 4 + * 1 -

It basically works like a stack in which you push operands until you find an operator; given an arity n, you evaluate this operator with n numbers from the stack, and substitute them for their result

# Usage

 1) Clone the repository

    git clone https://github.com/sampath419/RPMCalculator.git

 2) Open terminal and navigate to the cloned repository path.

 3) In the navigated path, run the following command.

    ruby rpncalculator.rb

 4) That's it!! We can go with our inputs and see the outputs.
