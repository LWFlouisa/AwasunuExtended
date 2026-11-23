macro recursive_method(recursive_method_name, regular_content, recursive_content)
  def {{recursive_method_name}}
  {{recursive_content}}
  
  {{regular_content}}
  end
end

macro obelisk_method(obelisk_method_name, obelisk_output, obelisk_content)
  def {{obelisk_method_name}}
  {{obelisk_content}}
  
  {{obelisk_output}}
  end
end

macro define_method(name, content)
  def {{name}}
    {{content}}
  end
end

define_method viola, system("clear")
define_method   encrire(input), puts input
define_method encrireln(input), print input


## Name of interactive terminal.
define_method documentation(title, description), encrireln("#{title} #{description}")

define_method objet(mot_genre, mot_specifique), "#{mot_genre} #{mot_specifique} "
define_method                  subjet(pronoun),                     "#{pronoun} "
define_method                     verb(action),                      "#{action}."

define_method objet(mot_genre, mot_specifique), "#{mot_genre} #{mot_specifique} "
define_method                  subjet(pronoun),                     "#{pronoun} "
define_method                     verb(action),                      "#{action}."

define_method objet(mot_genre, mot_specifique), "#{mot_genre} #{mot_specifique} "
define_method                  subjet(pronoun),                     "#{pronoun} "
define_method                     verb(action),                      "#{action}."

define_method objet(mot_genre, mot_specifique), "#{mot_genre} #{mot_specifique} "
define_method                  subjet(pronoun),                     "#{pronoun} "
define_method                     verb(action),                      "#{action}."

define_method objet(mot_genre, mot_specifique), "#{mot_genre} #{mot_specifique} "
define_method                  subjet(pronoun),                     "#{pronoun} "
define_method                     verb(action),                      "#{action}."

def risuto(search_length, a, b, c)
  search_space = ARGV[0].to_i

  a = ARGV[1]
  b = ARGV[2]
  c = ARGV[3]

  matrix = [
    [[a, a, a],
     [a, a, b],
     [a, a, c]],

    [[b, b, a],
     [b, b, b],
     [b, b, c]],

    [[c, c, c],
     [c, c, c],
     [c, c, c]],
  ]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  search_space.times do
    cur_row = row_options.sample
    cur_col = col_options.sample
    cur_arr = arr_options.sample
  
    current_item = matrix[cur_row][cur_col][cur_arr]

    encrireln(current_item)
  end
end

def risuto(search_length, a, b, c)
  search_space = ARGV[0].to_i

  a = ARGV[1]
  b = ARGV[2]
  c = ARGV[3]

  matrix = [
    [[a, a, a],
     [a, a, b],
     [a, a, c]],

    [[b, b, a],
     [b, b, b],
     [b, b, c]],

    [[c, c, c],
     [c, c, c],
     [c, c, c]],
  ]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  search_space.times do
    cur_row = row_options.sample
    cur_col = col_options.sample
    cur_arr = arr_options.sample
  
    current_item = matrix[cur_row][cur_col][cur_arr]

    encrireln(current_item)
  end
end

## Grammar
define_method ne(first_noun, second_noun), "Ne #{first_noun} ou #{second_noun}, "
define_method            mais(third_noun), "mais cest #{third_noun}. "
