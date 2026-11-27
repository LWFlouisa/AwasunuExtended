# Awasunu Extended
This is an intigrated and extended version of Awasunu and Nuerisupu with C, Shell, Clojure, Ruby, Python, and Lua extensions.

##
<iframe width="560" height="315" src="https://www.youtube.com/embed/H-ldCbQDv6U?si=h7wcnPDQWMSWiE0m" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

## Calling Conventions
Note that if awasunu use the awasunu executeables, if nuerisupu execute the nuerisupu executeables. Each has a clothed and naked variations.

## Greeter
This system has three main ways of doing Hello World.

In awasunu_clothed it requires parentheses.

~~~
(encrireln Hello World)
~~~

Nuebyte Interpreter uses an abbreviated function name. Nuebyte interpreter fixes the quote spacing issue:

~~~
(enc "Hello World")
~~~

In Awashell and Nueshell, it support a naked variation:

~~~
source "./lib/shell/awashell"

enc "Bonjour, toute le monde! C'est midi!"
~~~

## Prediction Mechanics
Prediction requires the function name, search space as an integer, and three symbol-description pairs, and uses awa extension:

~~~
(hlim 2 :cats cats_are_the_cleanest_pets :dogs dogs_are_mans_best_friend :gerbils gerbils_dont_use_hamster_wheels)
~~~

In Nuerisupu the direct counterparts are CFS and NFS, and uses the nue extension:

~~~
(docfs :cats cats_are_the_cleanest_pets :dogs dogs_are_mans_best_friend :gerbils gerbils_dont_use_hamster_wheels)
~~~

This generates a command like so:

~~~
(cfs :cats cats_are_the_cleanest_pets :dogs dogs_are_mans_best_friend :gerbils gerbils_dont_use_hamster_wheels)
~~~

Not yet implemented is donsf metaprogramming.
