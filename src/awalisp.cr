####################################################################################################
#                                              Betanpo                                             #
####################################################################################################
#def betanpo(a, b)
#  right = [:right_finger, a.split(" ")]
#  left  = [:left_finger, b.split(" ")]
#
#  floating = [ :floating_finger, right[1][1], left[1][0] ]
#
#  "Floating finger: '#{floating[1]} #{floating[2]}'"
#end

macro define_method(method_name, content)
  def {{method_name}}
    {{content}}
  end
end

#define_method bobjects(*args), a, b, c, d = args; betanpo(a, b); betanpo(c, d)

####################################################################################################
#                                         Dynamic Entities                                         #
####################################################################################################
def d_object(*args)
  a, b, c = args

  proc = Proc(String, String).new { |x|
    x
  }

  form_a = proc.call(a)
  form_b = proc.call(b)
  form_c = proc.call(c)

  matrix = [
    [[form_a, form_a, form_a],
     [form_a, form_a, form_b],
     [form_a, form_a, form_c]],

    [[form_b, form_b, form_a],
     [form_b, form_b, form_b],
     [form_b, form_b, form_c]],

    [[form_c, form_c, form_a],
     [form_c, form_c, form_b],
     [form_c, form_c, form_c]],
  ]

  mrow = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
  mcol = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
  marr = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  cur_row = row_options[mrow]
  cur_col = col_options[mcol]
  cur_arr = arr_options[marr]

  current_object = matrix[cur_row][cur_col][cur_arr]

  current_object
end

def d_subject(*args)
  a, b, c = args

  proc = Proc(String, String).new { |x|
    x
  }

  form_a = proc.call(a)
  form_b = proc.call(b)
  form_c = proc.call(c)

  matrix = [
    [[form_a, form_a, form_a],
     [form_a, form_a, form_b],
     [form_a, form_a, form_c]],

    [[form_b, form_b, form_a],
     [form_b, form_b, form_b],
     [form_b, form_b, form_c]],

    [[form_c, form_c, form_a],
     [form_c, form_c, form_b],
     [form_c, form_c, form_c]],
  ]

  mrow = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
  mcol = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
  marr = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  cur_row = row_options[mrow]
  cur_col = col_options[mcol]
  cur_arr = arr_options[marr]

  current_subject = matrix[cur_row][cur_col][cur_arr]

  current_subject
end

def d_verb(*args)
  a, b, c = args

  proc = Proc(String, String).new { |x|
    x
  }

  form_a = proc.call(a)
  form_b = proc.call(b)
  form_c = proc.call(c)

  matrix = [
    [[form_a, form_a, form_a],
     [form_a, form_a, form_b],
     [form_a, form_a, form_c]],

    [[form_b, form_b, form_a],
     [form_b, form_b, form_b],
     [form_b, form_b, form_c]],

    [[form_c, form_c, form_a],
     [form_c, form_c, form_b],
     [form_c, form_c, form_c]],
  ]

  mrow = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
  mcol = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
  marr = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  cur_row = row_options[mrow]
  cur_col = col_options[mcol]
  cur_arr = arr_options[marr]

  current_verb = matrix[cur_row][cur_col][cur_arr]

  current_verb
end

def subject(a, b, c)
  new_subject = d_object(a, b, c)
end

def object(a, b, c)
  new_object = d_object(a, b, c)
end

def verb(a, b, c)
  new_verb = d_object(a, b, c)
end

####################################################################################################
#                                       Augmented Objects                                          #
####################################################################################################
def augmented_object(*args)
  a1, b1, c1, d1, e1, f1, g1, h1, i1 = args

  proc = Proc(String, String).new { |x|
    x
  }

  node_a = proc.call(a1)
  node_b = proc.call(b1)
  node_c = proc.call(c1)
  node_d = proc.call(d1)
  node_e = proc.call(e1)
  node_f = proc.call(f1)
  node_g = proc.call(d1)
  node_h = proc.call(e1)
  node_i = proc.call(f1)

  matrix = [
    [[node_a, node_h, node_a],
     [node_e, node_g, node_d],
     [node_i, node_c, node_f]],

    [[node_b, node_a, node_h],
     [node_d, node_e, node_c],
     [node_f, node_i, node_g]],

    [[node_h, node_b, node_a],
     [node_c, node_d, node_e],
     [node_g, node_i, node_a]],
  ]

  mrow = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
  mcol = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
  marr = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  cur_row = row_options[mrow]
  cur_col = col_options[mcol]
  cur_arr = arr_options[marr]

  current_object = matrix[cur_row][cur_col][cur_arr]

  current_object
end

## Get Statistics
def get_statistics(a1, a2, b1, b2, c1, c2, lisp_name)
  puts "Transpiled..."

  data = <<-DATASET
  ; Sets the random state
  (setq *random-state* (make-random-state t))

  (defvar y (random 3))

  ; Give me a probability
  (defvar probability (random 0.99999999))

  (defvar a y)
  (defvar b y)

  (princ "[ ")
  (princ (nth a `("#{a1}", "#{b1}", "#{c1}")))
  (princ " ")

  (princ (nth b `("#{a2}", "#{b2}", "#{c2}")))

  (princ " ")
  (princ probability)
  (princ " ]")
  DATASET

  File.open("#{lisp_name}.lisp", "w") { |f|
    f.puts data
  }

  File.open("#{lisp_name}.sh", "a") { |f|
    f.puts "clisp #{lisp_name}.lisp"
  }
end

## Negative Constraint Satisfaction
def ne(first_noun, second_noun, outfname)
  negations = <<-NEGATIONS
  (require "lisp/intermediate/negative_constraints.lisp")

  NEGATIONS

  File.open("#{outfname}.lisp", "w") { |f|
    f.puts negations
    f.puts %Q((ne "#{first_noun} "#{second_noun}"))
  }

  print %Q((ne #{first_noun} #{second_noun}))
end

def mais(third_noun, outfname)
  confirmations = <<-CONFIRMATION  
  (require "lisp/intermediate/negative_constraints.lisp")

  CONFIRMATION

  File.open("#{outfname}.lisp", "w") { |f|
    f.puts confirmations
    f.puts %Q((mais "#{third_noun}"))
  }

  puts %Q((mais #{third_noun}))
end

## Negative Constraint Satisfaction Non Lisp
def ne2(first_noun, second_noun)
  %Q(ne #{first_noun} #{second_noun}, )
end

def mais2(third_noun)
  %Q(mais c'est #{third_noun})
end

def ne_mais(ne, mais)
  "#{ne}#{mais}"
end

## Expression Lists
def subject_first_expression_list(*args)
  s1, o1, v1,
  v2, o2, s2, list_name = args

  crystal_list = <<-NEWLIST
  #{list_name} = [
    ["#{s1}", "#{o1}", "#{v1}"],
    ["#{v1}", "#{o1}", "#{s1}"],
  ]

  first_value  = ARGV[0].to_i
  second_value = ARGV[1].to_i

  #{list_name}[first_value][second_value]
  NEWLIST

  File.open("#{list_name}.cr", "w") { |f|
    f.puts crystal_list
  }
end

def action_first_expression_list(*args)
  v1, o1, s1,
  s2, o2, v2, list_name = args

  crystal_list = <<-NEWLIST
  #{list_name} = [
    ["#{v1}", "#{o1}", "#{s1}"],
    ["#{s2}", "#{o2}", "#{v2}"],
  ]

  first_value  = ARGV[0].to_i
  second_value = ARGV[1].to_i

  #{list_name}[first_value][second_value]
  NEWLIST

  File.open("#{list_name}.cr", "w") { |f|
    f.puts crystal_list
  }
end

def object_first_expression_list(*args)
  o1, s1, v1,
  s2, o2, v2, list_name = args

  crystal_list = <<-NEWLIST
  #{list_name} = [
    ["#{o1}", "#{s1}", "#{v1}"],
    ["#{s2}", "#{o2}", "#{v2}"],
  ]

  first_value  = ARGV[0].to_i
  second_value = ARGV[1].to_i

  #{list_name}[first_value][second_value]
  NEWLIST

  File.open("#{list_name}.cr", "w") { |f|
    f.puts crystal_list
  }
end

## Conditionals
def loya(loyality)
  puts "Vous avour un loya de #{loyality}."
end

def para(parasitism)
  puts "Vous avour un para de #{parasitism}."
end

def deva(devience)
  puts "Vous avour un deva de #{devience}."
end

def loyadeva(loya, deva, para, label)
  if    loya > 0.8; puts "#{label} est un loya."
  elsif loya < 0.2; puts "#{label} n'est un loya."
  else
    loya(loya)
  end

  if    deva > 0.8; puts "#{label} est un deva."
  elsif deva < 0.2; puts "#{label} n'est un deva."
  else
    deva(deva)
  end

  if    para > 0.8; puts "#{label} est un para."
  elsif para < 0.2; puts "#{label} n'est un para."
  else
    para(para)
  end
end

#def libregrupo(*kwargs)
#  new_list = <<-NEWLIST
#  libregrupo = kwargs

#  libregrupo = ARHV[0]
#  NEWLIST

#  File.open("libregrupo.cr", "w") { |f|
#    f.puts new_list
#  }

#  File.open("descendants/libregrupo.awa", "w") { |f|
#    f.puts kwargs
#  }  
#end

class ObjectList
  def self.select_types(*args)
    v1, o1, s1, s2, v2, o2, first_value, second_value = args

    first_value  = first_value.to_i
    second_value = second_value.to_i

    fruit_types = [
      [v1, o1, s1],
      [s2, v2, o2],
    ]

    row_options = [0, 1]
    col_options = [0, 1]
    arr_options = [0, 1]

    new_object = fruit_types[first_value][second_value]

    new_object
  end
end

#######################################################################################
#                                        REPL                                         #
#######################################################################################
def awasunu_repl
  file_name = ARGV[0]

  read_file = File.read_lines(file_name)

  total_lines = read_file.size.to_i
  index       = 0

  if total_lines > 0
    total_lines.times do
      current_line = read_file[index]
  
      ## Trims syntactical munk fruit.
      current_line = current_line.tr ")", ""  
      current_line = current_line.tr "(", ""
      current_line = current_line.tr %q("), %q()

      tokens       = current_line.split(" ")
      total_tokens = tokens.size.to_i
      token_index  = 0
    
      ## The actual tokens you'll be parsing.
      parsed_tokens = [] of String
    
      if total_tokens > 0

        total_tokens.times do
          current_token = tokens[token_index]
 
          parsed_tokens = parsed_tokens.push(current_token)
    
          token_index = token_index + 1
        end
        
        ###################################################################################################
        #                                         Document Parsing                                        #
        ###################################################################################################  
        if    parsed_tokens[0] == "encrire"
          new_index  = 0
          size_limit = parsed_tokens.size.to_i
          
          size_limit.times do
            new_output = parsed_tokens[new_index].tr "'", ""
            
            if new_output == "encrire"
            else
              print "#{new_output} "
            end
            
            new_index = new_index + 1
          end
        elsif parsed_tokens[0] == "encrireln"
          new_index  = 0
          size_limit = parsed_tokens.size.to_i
          
          size_limit.times do
            new_output = parsed_tokens[new_index].tr "'", ""
            
            if new_output == "encrireln"
            else
              print "#{new_output} "
            end
            
            new_index = new_index + 1
          end
          
          puts " "
        elsif parsed_tokens[0] == "#"
        elsif parsed_tokens[0] == "--"
        elsif parsed_tokens[0] == ";"
        elsif parsed_tokens[0] == ""
        elsif parsed_tokens[0] == "gstat"
          get_statistics(parsed_tokens[1], parsed_tokens[2],
                         parsed_tokens[3], parsed_tokens[4],
                         parsed_tokens[5], parsed_tokens[6], parsed_tokens[7])

          File.open("descendants/#{current_line.tr " ", "_"}.awa", "a") { |f|
            f.puts "#{parsed_tokens[0]} #{parsed_tokens[1]} #{parsed_tokens[2]} #{parsed_tokens[3]} #{parsed_tokens[4]} #{parsed_tokens[5]} #{parsed_tokens[6]} #{parsed_tokens[7]}"
          }
        elsif parsed_tokens[0] == "nemais"
          ne(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])

          mais(parsed_tokens[4], parsed_tokens[5])

          File.open("descendants/#{current_line.tr " ", "_"}.awa", "a") { |f|
            f.puts "#{parsed_tokens[0]} #{parsed_tokens[1]} #{parsed_tokens[2]} #{parsed_tokens[3]} #{parsed_tokens[4]} #{parsed_tokens[5]}"
          }
        elsif parsed_tokens[0] == "dnemais"
          print ne2(subject(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3]), subject(parsed_tokens[4], parsed_tokens[5], parsed_tokens[6]))

          puts mais2(subject(parsed_tokens[7], parsed_tokens[8], parsed_tokens[9]))

          File.open("descendants/#{current_line.tr " ", "_"}.awa", "a") { |f|
            f.puts "#{parsed_tokens[0]} #{parsed_tokens[1]} #{parsed_tokens[2]} #{parsed_tokens[3]} #{parsed_tokens[4]} #{parsed_tokens[5]} #{parsed_tokens[6]} #{parsed_tokens[7]} #{parsed_tokens[8]} #{parsed_tokens[9]}"
          }
        elsif parsed_tokens[0] == "pnemais"
          get_statistics(parsed_tokens[1], ne_mais( ne2(parsed_tokens[2],  parsed_tokens[3]),  mais2(parsed_tokens[4])),
                         parsed_tokens[5], ne_mais( ne2(parsed_tokens[6],  parsed_tokens[7]),  mais2(parsed_tokens[8])),
                         parsed_tokens[9], ne_mais(ne2(parsed_tokens[10], parsed_tokens[11]), mais2(parsed_tokens[12])),

          # This is the output file
          parsed_tokens[13])

          File.open("descendants/#{current_line.tr " ", "_"}.awa", "a") { |f|
            f.puts "#{parsed_tokens[0]} #{parsed_tokens[1]} #{parsed_tokens[2]} #{parsed_tokens[3]} #{parsed_tokens[4]} #{parsed_tokens[5]} #{parsed_tokens[6]} #{parsed_tokens[7]} #{parsed_tokens[8]} #{parsed_tokens[9]} #{parsed_tokens[10]} #{parsed_tokens[11]} #{parsed_tokens[12]} #{parsed_tokens[13]}"
          }
        elsif parsed_tokens[0] == "sfl" ## Generates a 2D list in Crystal format that maps specific French tokens.
          subject_first_expression_list(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3],
                                        parsed_tokens[4], parsed_tokens[5], parsed_tokens[6],
 
          ## The actual file that gets written to.
          parsed_tokens[7])

          File.open("descendants/#{current_line.tr " ", "_"}.awa", "a") { |f|
            f.puts "#{parsed_tokens[0]} #{parsed_tokens[1]} #{parsed_tokens[2]} #{parsed_tokens[3]} #{parsed_tokens[4]} #{parsed_tokens[5]} #{parsed_tokens[6]} #{parsed_tokens[7]}"
          }
        elsif parsed_tokens[0] == "auto_sfl"
          subject_first_expression_list(d_subject(parsed_tokens[0], parsed_tokens[1], parsed_tokens[2]), d_object( parsed_tokens[3], parsed_tokens[4], parsed_tokens[5]), d_verb(parsed_tokens[6], parsed_tokens[7], parsed_tokens[8]),
                                         d_verb(parsed_tokens[9], parsed_tokens[10], parsed_tokens[11]), d_object(parsed_tokens[12], parsed_tokens[13], parsed_tokens[14]), d_subject(parsed_tokens[15], parsed_tokens[16], parsed_tokens[17]),

          ## The actual file that gets written to.
          parsed_tokens[18])

          File.open("descendants/#{current_line.tr " ", "_"}.awa", "a") { |f|
            f.puts "#{parsed_tokens[0]} #{parsed_tokens[1]} #{parsed_tokens[2]} #{parsed_tokens[3]} #{parsed_tokens[4]} #{parsed_tokens[5]} #{parsed_tokens[6]} #{parsed_tokens[7]} #{parsed_tokens[8]} #{parsed_tokens[9]} #{parsed_tokens[10]} #{parsed_tokens[11]} #{parsed_tokens[12]} #{parsed_tokens[13]} #{parsed_tokens[14]} #{parsed_tokens[15]}"
          }
        elsif parsed_tokens[0] == "afl"
          action_first_expression_list(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3],
                                       parsed_tokens[4], parsed_tokens[5], parsed_tokens[6],
 
          ## The actual file that gets written to.
          parsed_tokens[7])

          File.open("descendants/#{current_line.tr " ", "_"}.awa", "a") { |f|
            f.puts "#{parsed_tokens[0]} #{parsed_tokens[1]} #{parsed_tokens[2]} #{parsed_tokens[3]} #{parsed_tokens[4]} #{parsed_tokens[5]} #{parsed_tokens[6]} #{parsed_tokens[7]}"
          }
        elsif parsed_tokens[0] == "ofl"
          object_first_expression_list(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3],
                                       parsed_tokens[4], parsed_tokens[5], parsed_tokens[6],
 
          ## The actual file that gets written to.
          parsed_tokens[7])

          File.open("descendants/#{current_line.tr " ", "_"}.awa", "a") { |f|
            f.puts "#{parsed_tokens[0]} #{parsed_tokens[1]} #{parsed_tokens[2]} #{parsed_tokens[3]} #{parsed_tokens[4]} #{parsed_tokens[5]} #{parsed_tokens[6]} #{parsed_tokens[7]}"
          }
        elsif parsed_tokens[0] == "loyadeva"
          loyadeva(parsed_tokens[1].to_f, parsed_tokens[2].to_f, parsed_tokens[3].to_f, parsed_tokens[4])

          File.open("descendants/#{current_line.tr " ", "_"}.awa", "a") { |f|
            f.puts "#{parsed_tokens[0]} #{parsed_tokens[1]} #{parsed_tokens[2]} #{parsed_tokens[3]} #{parsed_tokens[4]}"
          }
        elsif parsed_tokens[0] == "stype"
          ObjectList.select_types(parsed_tokens[0], parsed_tokens[1], parsed_tokens[2],
                                  parsed_tokens[3], parsed_tokens[4], parsed_tokens[5], parsed_tokens[6], parsed_tokens[7])
        else
          current_token = tokens[token_index]
        
          puts "Kazosale: Il y est ne un token #{current_token}"
        end
  
        index = index + 1
      end
    end
  else
    print "kozosale: "

    current_line = read_file[index]
   
    puts "Kazosale: Il y est ne un token #{current_line}"
  end
end

awasunu_repl
