#Comprendo

###Python style list comprehensions for Ruby

Useful? Maybe. Cool? Definitely.



#Installation

    gem install comprendo

#Examples

###Including

    include Comprendo

Always include comprendo in the class where it is used. Monkeypatching is bad, mmmkay?
    
###Base Case
    `x for x in [1,2,3]`
    => [1, 2, 3]

Pretty simple eh?

###View
    `x*x for x in [1,2,3]`
    => [1, 4, 9]   

The view is just ruby code.

###Conditional
    `x for x in [1, 2, 3, 4] if x%2 == 1`
    => [1,3]
    
The conditional is just ruby code too.

    `x for x in [1, 2, 3, 4] unless x%2 == 1`
    => [2,4]

Seriously, go nuts.
    
###Variable references

    @a = [3,4,5]
    @z = 4
    `x + @z for x in @a`
    => [7, 8, 9]

If you want to reference variables within your comprehension, they must be
instance variables on your class.
      
