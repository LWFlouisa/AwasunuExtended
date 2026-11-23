################################################################################################
#                                    Recursive Awasunu                                         #
################################################################################################
## Recursive Encrire
def encriref(input, outfname)
  encrire(input)

  File.open("#{outfname}.awa", "w") { |f| f.puts "encrireln #{input}"}
end

## Recursive Rphrase
def contrastiff(objet, subjet, verb, outfname)
  encrire("#{objet} #{subject} #{verb}")

  File.open("#{outfname}.awa", "w") { |f| puts "encrire #{object} #{subject} #{verb}." }
end

## Recursive Grammar Patterns
def recursive_osv(o, s, v)
  puts"#{o} #{s} #{v}"

  File.open("#{o}.awa", "w") { |f|
    f.puts %Q(encrireln #{o} #{s} #{v})
  }
end

def recursive_vos(v, o, s)
  print "#{v} #{o} #{s}" 

  File.open("#{v}.awa", "w") { |f|
    f.puts %Q(encrireln #{v} #{o} #{s})
  }
end

def recursive_osv(s, o, v)
  print "#{s} #{o} #{v}"

  File.open("#{s}.awa", "w") { |f|
    f.puts %Q(encrireln #{s} #{o} #{v})
  }
end

def recursive_ovs(o, v, s)
  puts "#{o} #{v} #{s}"

  File.open("#{o}.awa", "w") { |f|
    f.puts %Q(encrireln #{o} #{v} #{s})
  }
end

## This function may not need recursive osv, vos, or sov.
def recursive_expression(phrase_one, phrase_two, outfname)
  puts "#{phrase_one} #{phrase_two}"

  File.open("#{outfname}.awa", "w") { |f|
    f.puts %Q(encrireln #{phrase_one} #{phrase_two})
  }
end

def recursive_pgram(v, o, s)
  puts %Q(["#{v}", "#{o}", "#{s}]")

  File.open("#{v}.awa", "w") { |f|
    f.puts %Q(#{v} #{o} #{s})
  }
end

def recursive_ntupe(v, o, s)
  puts %Q("[#{v}", "#{o}", "#{s}]")

  File.open("#{v}.awa", "w") { |f|
    f.puts %Q(#{v} #{i} #{s})
  }
end

################################################################################################
#                                      Recursive Grammar                                       #
################################################################################################

################################################################################################
#                                       Recursive Cat                                          #
################################################################################################
def chatte_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def chatte_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
#                                      Recursive Dog                                           #
################################################################################################
def chienne_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def chienne_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
#                                    Recursive Guiniepig                                       #
################################################################################################
def gpig_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def gpig_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
def hamster_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def hamster_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
def lapine_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def lapine_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
def lezard_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def lezard_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
def perroquet_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def perroquet_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
def porange_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def porange_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
def loup_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def loup_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
def renard_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def renard_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
def agneau_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def agneau_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
def ane_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def ane_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
def canard_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def canard_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
def chevre_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def chevre_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end
