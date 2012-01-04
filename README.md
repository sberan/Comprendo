#Comprendo

Overrides the backtick operator _without monkeypatching_ to provide Python style list comprehensions for Ruby.



Useful? Maybe. Cool? I think so.

![build status](https://secure.travis-ci.org/sberan/Comprendo.png)

#Examples

###List Comprehensions
    include Comprendo
    
    `x for x in [1,2,3]`
    
    => [1, 2, 3]


###Views
    `x*x for x in [1,2,3]`
    => [1, 4, 9]   

The view is just ruby code.

###Conditional
    `x for x in s[1, 2, 3, 4] if x%2 == 1`
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


#Installation

    gem install comprendo

#More Info

More info on Python's list comprehensions can be found in [PEP 202](http://www.python.org/dev/peps/pep-0202/)
