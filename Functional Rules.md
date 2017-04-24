# Functional Rules

Based on http://blog.ninjaferret.co.uk/2015/06/05/Introducing-Functional-Calisthenics.html & http://tomphp.github.io/functional-programming/2015/06/21/functional-calisthenics-in-clojure.html

1. Side effects can only occur at the top level
2. No mutable state
3. Functions should have no more than 2 arguments
4. Maximum level of abstraction
5. Always use infinite sequences
6. No ifs
7. No Loops

### Side effects can only occur at the top level

We want the majority of our code to be pure functions and in order for that to be the case they cannot depend on anything that is impure. This means we should pull the impure functions up to the top level and isolate them as much as possible from the rest of the code. This can include:

* User interaction
* Output to screen
* API calls

### No mutable state

As well as creating pure functions, we don't want to mutate state within a function either, e.g. do not change the value of variables once they have been set.  This has a negative impact on code readability and any mutable state could potentially result in an unintended consequence.

### Functions should have no more than two arguments

We should be using restricting the number of arguments that a function can take, a function with a large number of arguments smells of a single responsibility principle violation. Automatic currying doesn't count!

### Maximum level of abstraction

Functions should take and return values at the highest level of abstraction possible, e.g. if List is a special case of Enumerable then the function should take Enumerable.

### Use infinite sequences

If you function takes, or returns, a sequence of data then write the function in a way that does not exclude infinite sequences - allow for tail recursion etc.

### No ifs

Avoid using if statements.  "if" is just a special case of pattern matching anyway.

### No Loops

Loops are for noobs.  Get declarative and/or recursive!
