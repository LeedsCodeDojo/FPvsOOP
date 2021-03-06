# Object Oriented Rules

Based on https://www.cs.helsinki.fi/u/luontola/tdd-2009/ext/ObjectCalisthenics.pdf

1. Only One Level Of Indentation Per Method
2. Don’t Use The ELSE Keyword
3. Wrap All Primitives And Strings
4. One Dot Per Line
5. No More Than Two Instance Variables
6. No Setters/Properties
7. Explicit inheritance must be used at least once
8. No Functional code
    * First-class functions
    * High-order functions
    * Declarative code (e.g Linq)

### 1. Only One Level Of Indentation Per Method

Having too many levels of indentation in your code is bad for readability, and maintainability. In order to follow this rule, you have to split your methods up.  You won’t reduce the number of lines of code, but you will increase readability in a significant way.

### 2. Don’t Use The ELSE Keyword

The if/else construct is built into nearly all programming languages.  As it is so easy to add a new branch to the existing code than refactoring it to a better solution, you often end up with a really bad code.

An easy way to remove the else keyword is to rely on the early return solution.  As an alternative, you can introduce a variable in order to make your return statement parametrizable. This is not always possible though.

Also, it is worth mentioning that Object Oriented Programming gives us powerful features, such as polymorphism. Last but not least, the Null Object, State and Strategy patterns may help you as well!

### 3. Wrap All Primitives And Strings

Following this rule is pretty easy, you simply have to encapsulate all the primitives within objects, in order to avoid the Primitive Obsession anti-pattern.

If the variable of your primitive type has a behaviors, you MUST encapsulate it. And this is especially true for Domain Driven Design. DDD describes Value Objects like Money, or Hour for instance.

### 4. One Dot Per Line

Basically, the rule says that you should not chain method calls. It is the direct use of the Law of Demeter, saying only talk to your immediate friends, and don’t talk to strangers.

e.g. avoid code like this: game.turn.activePlayer.score

### 5. No More Than Two Instance Variables

This rule is probably the hardest one, but it promotes high cohesion, and better encapsulation.

### 6. No Setters/Set Properties

You should not update an object's state directly, and only use it in limited ways.  It is okay to use accessors to get the state of an object, as long as you don’t use the result to make decisions outside the object. Any decisions based entirely upon the state of one object should be made inside the object itself.

### 7. Explicit inheritance must be used at least once

Of course being a lover of OO, you'll be using it all over the place anyway!

### 8. No 'Functional' code

As if you'd even want to!
