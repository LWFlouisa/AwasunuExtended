#########################################################################################
#                                   Subjects And Verbs                                  #
#########################################################################################
# The rest of the French grammar that doesn't need to have a specific word class.       #
#########################################################################################
class Subject
  def self.pronoun(specify_pronoun)
    specify_pronoun
  end
end

class Verb
  def self.mange(specify_eaten)
    "un / une mange #{specify_eaten}"
  end

  def self.coupe(specify_chopped)
    "un / une coupe #{specify_chopped}"
  end

  def self.tombe(specify_fallen)
    "un / une tombe #{specify_fallen}"
  end
end

#########################################################################################
#                                  Genders de Francais                                  #
#########################################################################################
# This is where the basic word classes from Francais goes, for classifying everything   #
# in the current language of prestige. There is a few exceptions that either denote     #
# Japanese of origin on are supernatural or cursed in nature.                           #
#########################################################################################
class Le
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  #########################################################################################
  #                                     Les Coloures                                      #
  #########################################################################################
  # These color sets are based on RGB and CYMK rather than the full color spectrum. I     #
  # will gradually expand these color names to include the full French color spectrum     #
  # that are covered in the masculine gender.                                             #
  #########################################################################################
  ## Shades
  define_method self.noir_one(black_thing),   "Le #{black_thing} noir"
  define_method self.gris_one(grey_thing),     "Le #{grey_thing} gris"
  define_method self.blanc_one(white_thing), "Le #{white_thing} blanc"

  ## Primary Colours
  define_method self.rouge_one(red_thing),   "Le #{red_thing} rouge"
  define_method self.vert_one(green_thing), "Le #{green_thing} vert"
  define_method self.bleu_one(blue_thing),   "Le #{blue_thing} bleu"

  define_method self.rouge_two(red_thing),   "Le #{red_thing} rouge"
  define_method self.vert_two(green_thing), "Le #{green_thing} vert"
  define_method self.bleu_two(blue_thing),   "Le #{blue_thing} bleu"
  
  ## Secondary Colors
  define_method self.jaune(yellow_thing),       "Le #{yellow_thing} jaune"
  define_method self.magenta(magenta_thing), "Le #{magenta_thing} magenta"
  define_method self.cyan(cyan_thing),             "Le #{cyan_thing} cyan"
  
  ## Other Colors
  define_method self.violette(purple_thing),     "Le #{purple_thing} violette"
  define_method self.citrone(lime_thing),        "Le #{lime_thing} citrone"
  define_method self.orange(orange_thing),       "Le #{orange_thing} orange"
  define_method self.vermillon(vermillon_thing), "Le #{vermillon} vermillon"
  define_method self.ambre(amber_thing),         "Le #{amber_thing} ambre"

  #########################################################################################
  #                                       Le Pets                                         #
  #########################################################################################
  define_method self.chat(cat_adjective),                          "Le chat #{cat_adjective} " # A cat
  define_method self.chien(dog_adjective),                        "Le chien #{dog_adjective} " # A dog
  define_method self.cochon_d_inde(gpig_adjective),      "Le cochon_d'inde #{gpig_adjective} " # A guinea pig
  define_method self.hamster(hamster_adjective),            "Le hamster #{hamster_adjective}" # A hamster
  define_method self.lapin(rabbit_adjective),                  "Le lapin #{rabbit_adjective}" # A rabbit
  define_method self.lezard(lizard_adjective),           "" # A lizard
  define_method self.perroquet(parrot_adjective),        "" # A parrot
  define_method self.poisson_orange(goldfish_adjective), "" # A goldfish

  #############################################################################################
  #                                    Select Farm Animals                                    #
  #############################################################################################
  define_method self.loup(wolf_adjective),                         "Le loup #{wolf_adjective}"
  define_method self.renard(fox_adjective),                          "Le fox #{fox_adjective}"
  define_method self.agneau(lamb_adjective),                     "Le agneau #{lamb_adjective}"
  define_method self.ane(donkey_adjective),                       "Le ane #{donkey_adjective}"
  define_method self.canard(duck_adjective),                     "Le canard #{duck_adjective}"
  define_method self.cheval(horse_adjective),                   "Le cheval #{horse_adjective}"
  define_method self.chevre(goat_adjective),                     "Le chevre #{goat_adjective}"
  define_method self.cochon(pig_adjective),                       "Le cochon #{pig_adjective}"
  define_method self.coq(rooster_adjective),                     "Le coq #{rooster_adjective}"
  define_method self.mouton(sheep_adjective),                   "Le mouton #{sheep_adjective}"
  define_method self.poney(pony_adjective),                       "Le poney #{pony_adjective}"
  define_method self.poussin(chick_adjective),                 "Le poussin #{chick_adjective}"
  define_method self.veau(calf_adjective),                         "Le veau #{celf_adjective}"

  #########################################################################################
  #                               Les Animeux De Le Foret                                 #
  #########################################################################################
  # This is for generating strings for animals into Francais. Note that this may also     #
  # include animals of fantasy and fantistique origin. ( Fantastique is a specific sub    #
  # genre of fantasy fiction. These animals utilize the masculine word class.             #
  #########################################################################################
  define_method self.cerf(deer_adjective),                         "Le cerf #{deer_adjective}"
  define_method self.ours(bear_adjective),                         "Le ours #{bear_adjective}"
  define_method self.raton_laveur(racoon_adjective),     "Le raton laveur #{racoon_adjective}"

  #############################################################################################
  #                                     Dungeon Crawling                                      #
  #############################################################################################
  define_method self.rat(rat_adjective),          "Le rat #{rat_adjective}"
  define_method self.araignee(spider_adjective),  "Le araignee #{spider_adjective}"
  define_method self.gobelin(goblin_adjective),   "Le gobelin #{goblin_adjective}"
  define_method self.squelette(undead_adjective), "Le squelette #{undead_adjective}" # consider inventing a term
  define_method self.limon(sludge_adjective),      "La limon #{sludge_adjective}"

  ## Specifies a quality for a specific one-way dungeon.
  define_method self.donjon_unique(passage_adjective), "Le donjon a sens unique #{passage_adjective}"
  
  #############################################################################################
  #                                      Les Familles                                         #
  #############################################################################################

  #############################################################################################
  #                                 Masculine Class Monsters                                  #
  #############################################################################################
  define_method self.wancien(cthulhu_adjective), "Le wancien #{cthulhu_adjective}"
  
  #############################################################################################
  #                                  Masculine Class Traps                                    #
  #############################################################################################
  define_method self.mien_poison(mine_adjective), "Le mien poison #{mine_adjective}"
  define_method self.pointe_de_le_radeau(raft_adjective), "Pointe De Le Radeau, c'est #{raft_adjective}."

  #############################################################################################
  #                                Food Items For Journeying                                  #
  #############################################################################################
  define_method self.pizza(topingu), "Topingu pour le pizza est #{topingu}."
end

class La
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  #########################################################################################
  #                                     Les Coloures                                      #
  #########################################################################################
  # These color sets are based on RGB and CYMK rather than the full color spectrum. I     #
  # will gradually expand these color names to include the full French color spectrum     #
  # that are covered in the masculine gender.                                             #
  #########################################################################################
  define_method self.chartreuse(chartreuse_thing), "La #{chartreuse_thing} chartreuse"

  #############################################################################################
  #                                    Select Farm Animals                                    #
  #############################################################################################
  define_method self.poule(chicken_adjective),         "La poule #{chicken_adjective}"
  define_method self.souris(mouse_adjective),           "La souris #{mouse_adjective}"
  define_method self.vache(cow_adjective),                 "La vache #{cow_adjective}"
  
  #########################################################################################
  #                               Les Animeux De Le Foret                                 #
  #########################################################################################
  # This is for generating strings for animals into Francais. Note that this may also     #
  # include animals of fantasy and fantistique origin. ( Fantastique is a specific sub    #
  # genre of fantasy fiction. These animals utilize the feminine word class.              #
  #########################################################################################
  define_method self.chouette(owl_adjective),           "La chouette #{owl_adjective}"

  #############################################################################################
  #                                     Dungeon Crawling                                      #
  #############################################################################################
  define_method self.chauve_souris(bat_adjective), "La chauve-souris #{bat_adjective}"

  #############################################################################################
  #                                         Unclear                                           #
  #############################################################################################
  # These are for terms where its unclear whether its referring to the ceramic or the thing   #
  # that a ceramic holds.                                                                     #
  #############################################################################################
  define_method self.vase(vase_adjective), "La vase #{vase_adjective}"
end

class Les
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  #########################################################################################
  #                                     Les Animeux                                       #
  #########################################################################################
  # This is for generating strings for animals into Francais. Note that this may also     #
  # include animals of fantasy and fantistique origin. ( Fantastique is a specific sub    #
  # genre of fantasy fiction. These animals utilize the plural word class.                #
  #########################################################################################
  define_method self.troupeau(herd_adjective), "Les troupeaus #{herd_adjective}"

  #########################################################################################
  #                                  Execution Methods                                    #
  #########################################################################################
  define_method self.faiseur_de_veuves(widowed_adjective), "Les feaiseur de veuves #{widowed_adjective}"
  
  #########################################################################################
  #                                  Plural Class Gear                                    #
  #########################################################################################
  define_method self.axes_de_urgence(ax_adjective), "Les Axes De Urgence #{ax_adjective}"
  
  define_method self.pizzas(topingos), "Anos topingos pour les pizzas sont #{topingos}."
end

## Les genders de feux pour Nihongo
class Anu
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  #########################################################################################
  #                               Pseudo Masculine Class Monsters                         #
  ######################################################################################### 
  define_method self.umigarugu(gargoyal_adjective), "Anu Umigarugo #{gargoyal_adjective}"
end

class Ana
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  #########################################################################################
  #                              Pseudo Feminine Class Monsters                           #
  #########################################################################################
  define_method self.girocinopeqa(plate_adjective), "Ana girocinopeqa #{plate_adjective}" # Girochin Plaque
end

class Anos
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  #########################################################################################
  #                                  Format Of Narrative                                  #
  #########################################################################################
  # This refers to a four-frame manga like format styled kind 4-koma, but specialized in  #
  # serious and morbid topics in ki-sho-ten-ketsu in a French dialect.                    #
  #########################################################################################
  define_method self.qutarocaderos(format_adjective), "Anos qutarocaderos #{format_adjective}"
  define_method        self.manfra(format_adjective), "Le manfra #{format_adjective}"
  
  #########################################################################################
  #                                  Pseudo Plural Class Gear                             #
  #########################################################################################
  define_method self.kaidokuzaios(antidote_adjective), "Anos Kaidokuzaios #{antidote_adjective}"
end

#############################################################################################
#                                     Hybrid PortManteau                                    #
#############################################################################################
class Te
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  ###########################################################################################
  #                       Masculine Class Hybrid Port Manteau Monster                       #
  ###########################################################################################
  define_method self.sepeceterekimige(spectre_adjective),  "Te sepeceterekimige #{spectre_adjective}" # spectre_de_kimigayo
  define_method self.acideserupenete(serpent_adjective),   "Te acideserupenete #{serpent_adjective}" # Acid Serpent
  define_method self.acideduragone(dragon_adjective),      "Te acideduragone #{dragon_adjective}"

  ###########################################################################################
  ##
  ###########################################################################################
end

class Ta
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  ###########################################################################################
  #                       Feminine Class Hybrid Port Manteau Monster                       #
  ###########################################################################################
  define_method self.sepecetere_imeperaterica(spectre_adjective), "Ta sepecetere iweperaterica #{spectre_adjective}" # spectre de imperatrice
  define_method self.noneseturasona(nun_adjective),               "Ta noneseturasona #{nun_adjective}"
  define_method self.habucorosa(female_elder_god_adjective),      "Ta habucorosa #{female_elder_god_adjective}"
end

class Deso
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  ###########################################################################################
  #                         Hybrid Plural Class Monsters And Traps                          #
  ###########################################################################################
  define_method self.teruposva(teruposva_adjective), "Deso teruposva #{teruposva_adjective}" # troupeau de sale
  define_method self.kokenopo(moss_adjective),             "Deso kokenopo #{moss_adjective}" # Koke No Poison
end

#####################################################################################
#                                   Get Statistics                                  #
#####################################################################################
def logprob(lowest_probability, highest_probability)
  logarithm = lowest_probability / highest_probability
  
  "Surpise Factor: #{logarithm}"
end

def get_statistics(a1, a2, b1, b2, c1, c2)
  a = [ a1, a2 ]
  b = [ b1, b2 ]
  c = [ c1, c2 ]

  matrix = [[
    [[a[0], a[0]], [a[0], b[0]], [a[0], c[0]]],
    [[b[0], a[0]], [b[0], b[0]], [b[0], c[0]]],
    [[c[0], a[0]], [c[0], b[0]], [c[0], c[0]]],
  ], [
    [[a[1], a[1]], [a[1], b[1]], [a[1], c[1]]],
    [[b[1], a[1]], [b[1], b[1]], [b[1], c[1]]],
    [[c[1], a[1]], [c[1], b[1]], [c[1], c[1]]],
  ], [
    [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
    [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
    [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
  ]]

  label_type       = matrix[0]
  definition_type  = matrix[1]
  probability_type = matrix[2]
  
  row_probability = 0.33
  col_probability = 0.33
  
  graph_selection = row_probability * col_probability

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_label       = label_type[cur_row][cur_col][cur_arr]
  current_definition  = definition_type[cur_row][cur_col][cur_arr]
  
  base_probability = probability_type[cur_row][cur_col][cur_arr].to_i
  
  current_probability = base_probability + graph_selection
  
  current_probability = current_probability + current_probability
  current_information = "#{current_label} #{current_definition}"
  
  "I'm confident it is not [ #{current_label} #{current_definition} ] as it has only #{current_probability} probability."
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",       current_information)
end

def gain
  current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
  current_information = File.read("data/statistics/label/current_information.txt")

  if current_probability > 0.999999999999999999
    current_probability = 0.9 / current_probability
  end
  
  case current_probability
  when 0.003921569000000000..0.287225000000000000
    "I'm confident it is not [ #{current_information} ] as its only #{current_probability}."
  when 0.287225000000000001..0.522225000000000000
    "I'm less unconfident it is not [ #{current_information} ] as its only #{current_probability}."
  when 0.522225000000000001..0.756112500000000000
    "I'm almost sure it is [ #{current_information} ] because it has #{current_probability}."
  when 0.756112500000000001..0.999999999999999999
    "I'm sure it is [ #{current_information} ] after all it has #{current_probability}."

  else
    "The probability is either to low or to large, so I can't determine exactly."
  end
  
  current_probability    = current_probability + 0.15
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",       current_information)
end

def loss
  current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
  current_information = File.read("data/statistics/label/current_information.txt")

  if current_probability > 0.999999999999999999
    current_probability = 0.9 / current_probability
  end
  
  case current_probability
  when 0.003921569000000000..0.287225000000000000
    "I'm confident it is not [ #{current_information} ] as its only #{current_probability}."
  when 0.287225000000000001..0.522225000000000000
    "I'm less unconfident it is not [ #{current_information} ] as its only #{current_probability}."
  when 0.522225000000000001..0.756112500000000000
    "I'm almost sure it is [ #{current_information} ] because it has #{current_probability}."
  when 0.756112500000000001..0.999999999999999999
    "I'm sure it is [ #{current_information} ] after all it has #{current_probability}."

  else
    "The probability is either to low or to large, so I can't determine exactly."
  end
  
  current_probability    = current_probability * 0.95
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",       current_information)
end

def dynamic_reward_allocation
  l1_reasses = "level one reasses"
  l2_reasses = "level two reasses"
  l3_reasses = "level tre reasses"
  l4_reasses = "level fro reasses"

  reward_model = [
    [[l1_reasses, l1_reasses, l1_reasses, l1_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l2_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l3_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l4_reasses]],
   
    [[l2_reasses, l2_reasses, l2_reasses, l1_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l2_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l3_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l4_reasses]],
   
    [[l3_reasses, l3_reasses, l3_reasses, l1_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l2_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l3_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l4_reasses]],
   
    [[l4_reasses, l4_reasses, l4_reasses, l1_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l2_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l3_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l4_reasses]],
  ]

  row_options = [0, 1, 2, 3]
  col_options = [0, 1, 2, 3]
  arr_options = [0, 1, 2, 3]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_reward_structure = reward_model[cur_row][cur_col][cur_arr]

  if    current_reward_structure == l1_reasses; gain
  elsif current_reward_structure == l2_reasses; 2.times do gain end
  elsif current_reward_structure == l3_reasses; 3.times do gain end
  elsif current_reward_structure == l4_reasses; 4.times do gain end
  else
    gain
  end
end

def dynamic_guillotine_allocation
  l1_reasses = "level one reasses"
  l2_reasses = "level two reasses"
  l3_reasses = "level tre reasses"
  l4_reasses = "level fro reasses"

  reward_model = [
    [[l1_reasses, l1_reasses, l1_reasses, l1_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l2_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l3_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l4_reasses]],
   
    [[l2_reasses, l2_reasses, l2_reasses, l1_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l2_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l3_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l4_reasses]],
   
    [[l3_reasses, l3_reasses, l3_reasses, l1_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l2_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l3_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l4_reasses]],
   
    [[l4_reasses, l4_reasses, l4_reasses, l1_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l2_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l3_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l4_reasses]],
  ]

  row_options = [0, 1, 2, 3]
  col_options = [0, 1, 2, 3]
  arr_options = [0, 1, 2, 3]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_reward_structure = reward_model[cur_row][cur_col][cur_arr]

  if    current_reward_structure == l1_reasses; loss
  elsif current_reward_structure == l2_reasses; 2.times do loss end
  elsif current_reward_structure == l3_reasses; 3.times do loss end
  elsif current_reward_structure == l4_reasses; 4.times do loss end
  else
    loss
  end
end

def dynamic_mode_switcher
  modes = [
    [["deposit", "deposit"], ["deposit", "extract"]],
    [["extract", "deposit"], ["extract", "extract"]],
  ]
  
  row_options = [0, 1]
  col_options = [0, 1]
  arr_options = [0, 1]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_mode = modes[cur_row][cur_col][cur_arr]

  if    current_mode == "deposit"; dynamic_reward_allocation
  elsif current_mode == "extract"; dynamic_guillotine_allocation
  else
    dynamic_guillotine_allocation
  end
end

def get_edge_cases(a1, a2, b1, b2, c1, c2,
                   d1, d2, e1, e2, f1, f2)
                               
  a = [a1, a2]
  b = [b1, b2]
  c = [c1, c2]
  d = [d1, d2]
  e = [e1, e2]
  f = [f1, f2]

  edges_cases = [[
    [ a[0], e[0], b[0], d[0], f[0], c[0] ],
    [ e[0], b[0], d[0], f[0], c[0], a[0] ],
    [ b[0], d[0], f[0], c[0], a[0], e[0] ],
    [ d[0], f[0], c[0], a[0], e[0], b[0] ],
    [ f[0], c[0], a[0], b[0], d[0], e[0] ],
    [ c[0], a[0], e[0], b[0], d[0], f[0] ],
  ], [
    [ a[1], e[1], b[1], d[1], f[1], c[1] ],
    [ e[1], b[1], d[1], f[1], c[1], a[1] ],
    [ b[1], d[1], f[1], c[1], a[1], e[1] ],
    [ d[1], f[1], c[1], a[1], e[1], b[1] ],
    [ f[1], c[1], a[1], b[1], d[1], e[1] ],
    [ c[1], a[1], e[1], b[1], d[1], f[1] ],
  ]]
  
  symbols      = edges_cases[0]
  descriptions = edges_cases[1]

  row_options = [0, 1, 2, 3, 4, 5]
  col_options = [0, 1, 2, 3, 4, 5]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  
  first_symbol      = symbols[cur_row][cur_col] #[cur_arr]
  first_description = descriptions[cur_row][cur_col] #[cur_arr]

  cur_row = row_options.sample
  cur_col = col_options.sample
  #cur_arr = arr_options.sample
  
  second_symbol      = symbols[cur_row][cur_col] #[cur_arr]
  second_description = descriptions[cur_row][cur_col] #[cur_arr]

  cur_row = row_options.sample
  cur_col = col_options.sample
  #cur_arr = arr_options.sample
  
  third_symbol      = symbols[cur_row][cur_col] #[cur_arr]
  third_description = descriptions[cur_row][cur_col] #[cur_arr]
  
  2.times do
    get_statistics(first_symbol,  first_description,
                   second_symbol, second_description,
                   third_symbol,  third_description)
                   
    dynamic_mode_switcher
  end
  
  current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
  current_information = File.read("data/statistics/label/current_information.txt")
     
  ## Adaptive Surprise Factor Calculation
  if current_probability > 0.5
    print "[ #{current_information} ] "
    puts logprob(1-current_probability, current_probability)
  else
    print "[ #{current_information} ] "
    puts logprob(1-current_probability, current_probability)
  end
end

#####################################################################################
#                                Metaprogramming                                    #
#####################################################################################
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

########################################################################################
#                                     Use Case                                         #
########################################################################################
# Suppose two people wanted to cover up two dead bodies: one is the dead girlfriend of #
# the main character, the other is the brother whom murdered the girlfriends brother   #
# having placing his unconscious body in a rail road, so blood isn't on his hands.     #
#                                                                                      #
# This aims to solve how you investigate a case where the reality of one victim is not #
# certain, and one of the victims doesn't actually exist. The other is not murdered    #
# directly by the perpetrator.                                                         #
########################################################################################
def first_murder(victim_name, victim_method, case_status, victim_real)
  "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
end
  
def second_murder(victim_name, victim_method, case_status, victim_real)
  "#{victim_name}, #{victim_method}, #{case_status}] REALITY: #{victim_real}"
end
	
def investigate_case(a1, a2, b1, b2, c1, c2)
  2.times do
    get_statistics(a1, a2,
                   b1, b2,
                   c1, c2)
      
    dynamic_mode_switcher

    current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
    current_information = File.read("data/statistics/label/current_information.txt")
	
    if current_probability > 0.5
      program_name    = File.read("data/statistics/symbol/current_label.txt")
  
      print "[ Shannons, "
      print logprob(1-current_probability, current_probability)
      puts " ]"
    else
      program_name    = File.read("data/statistics/symbol/current_label.txt")
  
      print "[ Shannons, "
      print logprob(current_probability, 1-current_probability)
      puts " ]"
    end
  end
end

############################################################################################
#                               Vexpress Derived Subroutines                               #
############################################################################################
def vexpress(*args)
  array_name, v1, o1, s1, s2, o2, v2 = args
  
  File.open("#{array_name}.cr", "w") { |f|
    f.puts <<-EXPRESSION
    require "./src/Lhacurimosa"

    #{array_name} = ["#{v1}", "#{o1}", "#{s1}", "#{s2}", "#{o2}", "#{v2}"]
    EXPRESSION
    
    f.puts "
new_index = ARGV[0].to_i
encrireln(#{array_name}[new_index])"
  }
end

def ouvert(a, b, c, d, e, g)
  File.open(a, "a") { |f|
    f.puts b
  }

  File.open(c, "a") { |f|
    f.puts d
  }

  File.open(e, "a") { |f|
    f.puts g
  }
end

def obelisk(old_data)
  old_graveyard = File.read_lines("memoricimetiere/urn.txt").shuffle
  size_limit    = old_graveyard.size.to_i
  index = 0

  File.open("memoricimetiere/urn.txt", "w") { |f|
    f.puts old_data
      
    size_limit.times do
      f.puts old_graveyard[index]
 
      index = index + 1
    end
  }
end

def obelisk_awa(old_data)
  old_graveyard = File.read_lines("memoricimetiere/urn.txt").shuffle
  size_limit    = old_graveyard.size.to_i
  index = 0

  File.open("memoricimetiere/urn.txt", "w") { |f|
    f.puts "encrire #{old_data}"
      
    size_limit.times do
      f.puts old_graveyard[index]
 
      index = index + 1
    end
  }
end

def scatter_and_execute
  old_graveyard = File.read_lines("memoricimetiere/urn.txt").uniq.sort.shuffle
  size_limit    = old_graveyard.size.to_i
  index         = 0
  
  size_limit.times do
    system("#{old_graveyard[index]}")
  
    index = index + 1
  end
end

def three_plot_burial(father, mother, child)
  buried_fathers  = File.readlines("graveyard/family/father.txt").uniq.sort
  buried_mothers  = File.readlines("graveyard/family/mother.txt").uniq.sort
  buried_children = File.readlines("graveyard/family/child.txt").uniq.sort

  File.open("graveyard/family/father.txt", "w") { |f|
    f.puts father
    f.puts buried_fathers
  }
  
  File.open("graveyard/family/mother.txt", "w") { |f|
    f.puts mother
    f.puts buried_mothers
  }
  
  File.open("graveyard/family/child.txt", "w") { |f|
    f.puts child
    f.puts buried_children
  }
end

def four_plot_burial(father, mother, brother, sister)
  buried_fathers  = File.readlines("graveyard/family/father.txt").uniq.sort
  buried_mothers  = File.readlines("graveyard/family/mother.txt").uniq.sort
  buried_brothers = File.readlines("graveyard/family/brother.txt").uniq.sort
  buried_sisters  = File.readlines("graveyard/family/sister.txt").uniq.sort

  File.open("graveyard/family/father.txt", "w") { |f|
    f.puts father
    f.puts buried_fathers
  }
  
  File.open("graveyard/family/mother.txt", "w") { |f|
    f.puts mother
    f.puts buried_mothers
  }
  
  File.open("graveyard/family/brother.txt", "w") { |f|
    f.puts brother
    f.puts buried_brothers
  }

  File.open("graveyard/family/sister.txt", "w") { |f|
    f.puts sister
    f.puts buried_sisters
  }
end

def scatter_ashes
  old_graveyard = File.read_lines("memoricimetiere/urn.txt").uniq.sort.shuffle
  size_limit    = old_graveyard.size.to_i
  index         = 0
  
  size_limit.times do
    puts old_graveyard[index]
  
    index = index + 1
  end
end

def scatter_and_execute
  old_graveyard = File.read_lines("memoricimetiere/urn.txt").uniq.sort.shuffle
  size_limit    = old_graveyard.size.to_i
  index         = 0
  
  size_limit.times do
    system(old_graveyard[index])
  
    index = index + 1
  end
end

def scash_liminal(a1, a2, b1, b2, c1, c2, search_space)
  search_space.times do
    hyper_statistics(a1, a2,
                     b1, b2,
                     c1, c2)
                   
    dynamic_reward_allocation

    current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
    current_information = File.read("data/statistics/label/current_information.txt")

    if current_probability > 0.999999999999999999
      current_probability = 0.9 / current_probability
    end
	
    obelisk(current_information)

	scatter_ashes
  end
end

def scatter_three_ashes
  old_fathers  = File.read_lines("graveyard/family/father.txt").uniq.sort.shuffle
  old_mothers  = File.read_lines("graveyard/family/mother.txt").uniq.sort.shuffle
  old_children = File.read_lines("graveyard/family/child.txt").uniq.sort.shuffle

  size_limit    = old_fathers.size.to_i
  index         = 0
  
  ## Scatters fathers ashes in the wind.
  size_limit.times do
    puts old_fathers[index]
  
    index = index + 1
  end
  
  ## Scatters mothers ashes in the wind
  size_limit    = old_mothers.size.to_i
  index         = 0
  
  size_limit.times do
    puts old_mothers[index]
  
    index = index + 1
  end

  ## Scatters childrens ashes in the wind.
  size_limit    = old_children.size.to_i
  index         = 0
  
  size_limit.times do
    puts old_children[index]
  
    index = index + 1
  end
end

def scatter_four_ashes
  old_fathers  = File.read_lines("graveyard/family/father.txt").uniq.sort.shuffle
  old_mothers  = File.read_lines("graveyard/family/mother.txt").uniq.sort.shuffle
  old_brothers = File.read_lines("graveyard/family/brother.txt").uniq.sort
  old_sister   = File.read_lines("graveyard/family/sister.txt").uniq.sort

  size_limit    = old_fathers.size.to_i
  index         = 0
  
  ## Scatters fathers ashes in the wind.
  size_limit.times do
    puts old_fathers[index]
  
    index = index + 1
  end
  
  ## Scatters mothers ashes in the wind
  size_limit    = old_mothers.size.to_i
  index         = 0
  
  size_limit.times do
    puts old_mothers[index]
  
    index = index + 1
  end

  ## Scatters brothers ashes in the wind.
  size_limit    = old_brothers.size.to_i
  index         = 0
  
  size_limit.times do
    puts old_brothers[index]
  
    index = index + 1
  end

  ## Scatters sisters ashes in the wind.
  size_limit    = old_sister.size.to_i
  index         = 0
  
  size_limit.times do
    puts old_sister[index]
  
    index = index + 1
  end
end

############################################################################################
#                                      Documentation                                       #
############################################################################################
## Name of interactive terminal.
define_method documentation(title, description), encrireln("#{title} #{description}")

############################################################################################
#                                  Japanese Formal Logic                                   #
############################################################################################
## Japanese Contrastive
def sore(a, b)
  "Sora wa #{a} #{b}"
  
  sore = [ a, b ]
  
  File.open("data/japanese/positive/sore_a.txt", "a") { |f|
    f.puts sore[0]
  }

  File.open("data/japanese/positive/sore_b.txt", "a") { |f|
    f.puts sore[1]
  }
end

def shikashi(a, b)
  "Shikashi wa #{a} #{b}"
  
  shikashi = [ a, b ]

  File.open("data/japanese/positive/shikashi_a.txt", "a") { |f|
    f.puts shikashi[0]
  }

  File.open("data/japanese/positive/shikashi_b.txt", "a") { |f|
    f.puts shikashi[1]
  }
end

def matawa(a, b, c, d)
  "Matawa sora #{a} ni wa #{b} naishi #{c}, shikashi wa #{c}."

  matawa_nest = [ b, c ]
  matawa_est  = d

  File.open("data/japanese/positive/matawa_nest_a.txt", "a") { |f|
    f.puts matawa_nest[0]
  }

  File.open("data/japanese/positive/matawa_nest_b.txt", "a") { |f|
    f.puts matawa_nest[1]
  }
  
  File.open("data/japanese/positive/matawa_est.txt", "a") { |f|
    f.puts shikashi
  }
end

## Hanten-Ronri
def nisore(a, b)
  "Sono gyaku sora wa #{a} #{b}"
  
  nisore = [ a, b ]

  File.open("data/japanese/negative/nisore_a.txt", "a") { |f|
    f.puts nisore[0]
  }

  File.open("data/japanese/negative/nisore_b.txt", "a") { |f|
    f.puts nisore[1]
  }
end

def nishikashi(a, b)
  "Sono gyaku shikashi wa #{a} #{b}."

  nishikashi = [ a, b ]

  File.open("data/japanese/negative/matawa_nest_a.txt", "a") { |f|
    f.puts nishikashi[0]
  }

  File.open("data/japanese/negative/matawa_nest_b.txt", "a") { |f|
    f.puts nishikashi[1]
  }
end

def nimatawa(a, b, c, d)
  "Sono gyaku matawa sora #{a} wa #{b} naishi #{c}, shikashi wa #{d}"

  nimatawa_nest = [ b, c ]
  nimatawa_est  = d

  File.open("data/japanese/negative/nimatawa_nest_a.txt", "a") { |f|
    f.puts nimatawa_nest[0]
  }

  File.open("data/japanese/negative/nimatawa_nest_b.txt", "a") { |f|
    f.puts nimatawa_nest[1]
  }
  
  File.open("data/japanese/negative/nimatawa_est.txt", "a") { |f|
    f.puts nimatawa_est
  }
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

################################################################################################
#                                       Ternary Logic                                          #
################################################################################################
def nombres
  bot_name = %Q(BIANCA)

  cette_nombre = Proc(Int32, Int32, String).new { | x, interval |
    x > interval ? %Q(#{bot_name}: #{x} has reached the upper limit in growth.) : %Q(#{bot_name}: #{x} has reached the upper limit in growth.)
  }

  maisette_nombre = Proc(Int32, Int32, String).new { | x, interval |
    x < interval ? %Q(#{bot_name}: #{x} has reached the lower limit in growth.) : %Q(#{bot_name}: #{x} has not reached the limit in growth.)
  }

  sinon_nombre = Proc(Int32, Int32, Int32, String).new { | x, first_interval, second_interval |
    x > first_interval && x < second_interval ? %Q(#{bot_name}: #{x} is floating between growth intervals #{first_interval} and #{second_interval}.) : %Q(#{bot_name}: #{x} is not floating between growth intervals #{first_interval} and #{second_interval}.)
  }

  puts cette_nombre.call(ARGV[0].to_i, ARGV[1].to_i)
  puts maisette_nombre.call(ARGV[2].to_i, ARGV[3].to_i)
  puts sinon_nombre.call(ARGV[4].to_i, ARGV[5].to_i, ARGV[6].to_i)
end

def neg_nombres
  bot_name = %Q(BIANCA)

  necette_nombre = Proc(Int32, Int32, String).new { | x, interval |
    x > interval ? %Q(#{bot_name}: #{x} has reached the upper limit in shrinkage.) : %Q(#{bot_name}: #{x} has reached the upper limit in shrinkage.)
  }

  nemaisette_nombre = Proc(Int32, Int32, String).new { | x, interval |
    x < interval ? %Q(#{bot_name}: #{x} has reached the lower limit in shrinkage.) : %Q(#{bot_name}: #{x} has not reached the lower limit in shrinkage.)
  }

  nesinon_nombre = Proc(Int32, Int32, Int32, String).new { | x, first_interval, second_interval |
    x > first_interval && x < second_interval ? %Q(#{bot_name}: #{x} is floating between shrinkage intervals of #{first_interval} and #{second_interval}.) : %Q(#{bot_name}: #{x} is not floating between shrinkage intervals #{first_interval} and #{second_interval})
  }

  puts necette_nombre.call(ARGV[0].to_i, ARGV[1].to_i)
  puts nemaisette_nombre.call(ARGV[2].to_i, ARGV[3].to_i)
  puts nesinon_nombre.call(ARGV[4].to_i, ARGV[5].to_i, ARGV[6].to_i)
end

def kosan
  bot_name = %Q(#{ARGV[0]}) 

  sore_kosan = Proc(Float64, Float64, String).new { | x, probability |
    x > probability ? %Q(#{bot_name}: #{x} has reached the highest limit in probability.) : %Q(#{bot_name}: #{x} has not reached the highest limit in probability.)
  }

  shikashi_kosan = Proc(Float64, Float64, String).new { | x, probability |
    x < probability ? %Q(#{bot_name}: #{x} has reached the lowest limit in probability.) : %Q(#{bot_name}: #{x} has not reached the lowest limit in probability.)
  }

  matawa_kosan = Proc(Float64, Float64, Float64, String).new { | x, first_probability, second_probability |
    x > first_probability && x < second_probability ? %Q(#{bot_name}: #{x} is floating around medium probability.) : %Q(#{bot_name}: #{x} is not floating around medium probability.)
  }
   
  puts sore_kosan.call(ARGV[1].to_f, ARGV[2].to_f)
  puts shikashi_kosan.call(ARGV[3].to_f, ARGV[4].to_f)
  puts matawa_kosan.call(ARGV[5].to_f, ARGV[6].to_f, ARGV[7].to_f)
end

def nikosan
  bot_name = %Q(#{ARGV[0]})

  nisore_kosan = Proc(Float64, Float64, String).new { | x, probability |
    x > probability ? %Q(#{bot_name}: #{x} has reached the limit in negative probability.) : %Q(#{bot_name}: #{x} has not reached the limit in negative probability.)
  }

  nishikashi_kosan = Proc(Float64, Float64, String).new { | x, probability |
    x < probability ? %Q(#{bot_name}: #{x} has reached the limit in negative probability.) : %Q(#{bot_name}: #{x} has not reached the limit in negative probability.)
  }

  nimatawa_kosan = Proc(Float64, Float64, Float64, String).new { | x, first_probability, second_probability |
    x > first_probability && x < second_probability ? %Q(#{bot_name}: #{x} is floating around medium negative probability.) : %Q(#{bot_name}: #{x} is not floating around medium negative probability.)
  }

  puts nisore_kosan.call(ARGV[1].to_f, ARGV[2].to_f)
  puts nishikashi_kosan.call(ARGV[3].to_f, ARGV[4].to_f)
  puts nimatawa_kosan.call(ARGV[5].to_f, ARGV[6].to_f, ARGV[7].to_f)
end

############################################################################################
#                             Standard Awasunu Functionality                               #
############################################################################################
define_method viola, system("clear")

define_method   encrire(input), puts input
define_method encrireln(input), print input

recursive_method encriref(input, outfname), encrire(input), File.open("#{outfname}.awa", "w") { |f| f.puts "encrireln #{input}"}
obelisk_method   encrireo(input, outfname), input, obelisk("./awasunu #{outfname}")

recursive_method objet(mot_genre, mot_specifique), print("#{mot_genre} #{mot_specifique} "), File.open("#{mot_specifique}.awa", "w") { |f| f.puts "encrireln #{mot_genre} #{mot_specifique}" }
recursive_method                  subjet(pronoun),                      puts("#{pronoun} "),        File.open("#{pronoun}.awa", "w") { |f| f.puts                     "encrireln #{pronoun}" }
recursive_method                     verb(action),                       puts("#{action}."),         File.open("#{actopn}.awa", "w") { |f| f.puts                      "encrireln #{action}" }

recursive_method ne(first_noun, second_noun), "Ne #{first_noun} ou #{second_noun}.",   File.open("ne_#{first_noun}.awa", "w") { |f| f.puts "encrireln Ne #{first_noun} ou #{second_noun}." }
recursive_method            mais(third_noun),            "mais cest #{third_noun}.", File.open("mais_#{third_noun}.awa", "w") { |f| f.puts            "encrireln Mais cest #{third_noun}." }

## Not Yet circular in functionality.
define_method osv(o, s, v), "#{o} #{s} #{v}"
define_method sov(s, o, v), "#{s} #{o} #{v}"

define_method expression(phrase_one, phrase_two), encrire(%Q(["#{phrase_one}", "#{phrase_two}"]\n))

define_method parle_grammaire(v, o, s), encrireln("['#{v}', '#{o}','#{s}']")
define_method nihongotupelo(v, o, s), puts "['#{v}', '#{o}', '#{s}']"

############################################################################################
#                                Circular Transpilation                                    #
############################################################################################
recursive_method recursive_vos(verb, objet, subjet), print("#{verb} #{objet} #{subjet}, "),    File.open("vos_output.awa", "w") { |f| f.puts "encrireln #{verb} #{objet} #{subjet}" }
recursive_method recursive_sov(subjet, objet, verb), print("#{subjet} #{objet} #{verb}, "),     File.open("#{subjet}.awa", "w") { |f| f.puts "encrireln #{subjet} #{objet} #{verb}" }
recursive_method recursive_osv(objet, subjet, verb), puts("#{objet} #{subjet} #{verb}.\n"), File.open("object_output.awa", "w") { |f| f.puts "encrireln #{objet} #{subjet} #{verb}" }
recursive_method recursive_ovs(objet, verb, subjet), puts("#{objet} #{verb} #{subjet}.\n"), File.open("object_output.awa", "w") { |f| f.puts "encrireln #{objet} #{verb} #{subjet}" }

## This function may not need recursive osv, vos, or sov.
recursive_method recursive_expression(phrase_one, phrase_two, outfname), "#{phrase_one} #{phrase_two}", File.open("#{outfname}.awa", "w") { |f| f.puts %Q(encrireln #{phrase_one} #{phrase_two})}

recursive_method recursive_pgram(v, o, s), puts("[#{v}", "#{o}", "#{s}]"), File.open("#{v}.awa", "w") { |f| f.puts %Q(#{v} #{o} #{s}) }
recursive_method recursive_ntupe(v, o, s), puts("[#{v}", "#{o}", "#{s}]"), File.open("#{v}.awa", "w") { |f| f.puts %Q(#{v} #{o} #{s}) }

################################################################################################
#                                Who What When Where Why How                                   #
################################################################################################
#
################################################################################################
define_method nom(a),                                                 "Mes nom est #{a}."
define_method buttai(b),                                             "C'est un/une #{b}."
define_method temps(c),                                               "Le temp est #{c}."
define_method fukin(d),                                "Je suis en le voisinage de #{d}."
define_method motif(e),                                    "Mes raison pour ce est #{e}."
define_method hono(f),         "Mois methode pour le fabrication mes objectifs est #{f}."
define_method jiko(a, b, c),        "Vous avoir damande moi #{a} a propos #{b} par #{c}."

## Unite specific people at a time and place
define_method     unir(a, b, c), "Je avoir unif avec #{a} avec #{b} a #{c}."
define_method         genkei(a),        "Je suis un etudiant a propos #{a}."
define_method musee_comprime(a),                "cette musee comprime #{a}."
define_method      noremodei(a),               "Cette #{a} est noermodeios."

define_method ninom(a),                                           "Mes nom est ne #{a}."
define_method nibuttai(b),                                      "C'est non un/une #{b}."
define_method netemps(c),                                         "Le temp est ne #{c}."
define_method nifukin(d),                          "Je suis ne en le voisinage de #{d}."
define_method nemotif(e),                              "Mes raison pour ce est ne #{e}."
define_method nihono(f),   "Mois methode pour le fabrication mes objectifs est ne #{f}."

## Disunification
define_method neunir(a, b, c),            "Je ne avoir unif avec #{a} avec #{b} a #{c}."
define_method nijiko(a, b, c),  "Vous ne avoir damande moi #{a} a propos #{b} par #{c}."
define_method     nigenkei(a),                   "Je suis ne un etudiant a propos #{a}."

############################################################################################
#                                    Story Specific                                        #
############################################################################################
recursive_method           aruxetos(a, b, c),           %Q(Cette archette #{a} est de #{b}.\n), File.open("#{c}.awa", "w") { |f| f.puts           %Q(Cette archette #{a} est de #{b}.\n) }
recursive_method      coresetosunos(a, b, c),           %Q(Cette corsette #{a} est de #{b}.\n), File.open("#{c}.awa", "w") { |f| f.puts           %Q(Cette corsette #{a} est de #{b}.\n) }
recursive_method jupecabinemotonese(a, b, c), %Q(Cette jupe de les chiennes #{a} est de #{b}.), File.open("#{c}.awa", "w") { |f| f.puts %Q(Cette jupe de les chiennes #{a} est de #{b}.) }
recursive_method          basumoton(a, b, c),           %Q(Anos basumotonos #{a} est de #{b}.), File.open("#{c}.awa", "w") { |f| f.puts           %Q(Anos basumotonos #{a} est de #{b}.) }
recursive_method    basumotonerudos(a, b, c),       %Q(Anos basumotonerudos #{a} est de #{b}.), File.open("#{c}.awa", "w") { |f| f.puts       %Q(Anos basumotonerudos #{a} est de #{b}.) }
recursive_method       sfabotarokos(a, b, c),       %Q(Anos sfabotarokos de #{a} est de #{b}.), File.open("#{c}.awa", "w") { |f| f.puts       %Q(Anos sfabotarokos de #{a} est de #{b}.) }

recursive_method   ehonerudos(a, b, c), %Q(Anos ehonerudos #{a} est de #{b}.),                   File.open("#{c}.awa", "w") { |f| f.puts %Q(Anos ehonerudos #{a} est de #{b}.) } # Black Hole Expanse
recursive_method esvasvohudos(a, b, c), %Q(#{a} tombe en anos esvasvohudos a #{b}.),      File.open("#{c}.awa", "w") { |f| f.puts %Q(A#{a} tombe en anos esvasvohudos a #{b}.) } # Executioners scaffold
recursive_method      ojijaku(a, b, c), %Q(Anos ojijaku #{a} est cette payes de #{b}.), File.open("#{c}.awa", "w") { |f| f.puts %Q(Anos ojijaku #{a} est cette payes de #{b}.) } # Oncle Hanzi as a generic label for fairy tales.

recursive_method     egirafu(a, b, c),     %Q(#{a} est en un anu egirafu en #{b}.), File.open("#{c}.awa", "w") { |f| f.puts     %Q(#{a} est en un anu egirafu en #{b}.) } # A is a giraff in B.
recursive_method ehepehanutu(a, b, c), %Q(#{a} est en un anu ehepehanutu en #{b}.), File.open("#{c}.awa", "w") { |f| f.puts %Q(#{a} est en un anu ehepehanutu en #{b}.) } # A is a elephant in B.

recursive_method nerudospeda(a, b, c), %Q(#{a} est en un anu nerudospeda de #{b}.), File.open("#{c}.awa", "w") { |f| f.puts %Q(#{a} est en un anu nerudospeda de #{b}.) } # A is a black footed person in B.
recursive_method   perachinu(a, b, c),   %Q(#{a} est en un anu perachinu en #{b}.), File.open("#{c}.awa", "w") { |f| f.puts   %Q(#{a} est en un anu perachinu en #{b}.) } # A is a fish in B.
recursive_method   erudutete(a, b, c),   %Q(#{a} est en un ana erudutete de #{b}.), File.open("#{c}.awa", "w") { |f| f.puts   %Q(#{a} est en un ana erudutete de #{b}.) } # A is an red head of B.
recursive_method       lupos(a, b, c),      %Q(#{a} est en un anos lupos en #{b}.), File.open("#{c}.awa", "w") { |f| f.puts      %Q(#{a} est en un anos lupos en #{b}.) } # A is a wolf in B.
recursive_method     sorisos(a, b, c),    %Q(#{a} est en un anos sorisos en #{b}.), File.open("#{c}.awa", "w") { |f| f.puts    %Q(#{a} est en un anos sorisos en #{b}.) } # A is an mouse in B.
recursive_method     poletos(a, b, c),    %Q(#{a} est en un anos poletos en #{b}.), File.open("#{c}.awa", "w") { |f| f.puts    %Q(#{a} est en un anos poletos en #{b}.) } # A is an chicken in B.

recursive_method          ehine(a, b, ),           %Q(#{a} est un anos ehine pour #{b}.),  # Lion nationality
recursive_method        etigeru(a, b, ),         %Q(#{a} est un anos etigeru pour #{b}.),  # Tiger nationality
recursive_method    ecerocodihu(a, b, ),     %Q(#{a} est en un anu ecerocodihu en #{b}.),  # A is a crocodile in B.
recursive_method ebaxetonerudos(a, b, ), %Q(#{a} est en un anos ebaxetonerudos en #{b}.),  # A is a black uniformed bayonette wielder in B.

## Specific Dungeon Crawling
define_method gobehinos(a, b), %Q(#{a} est en un anos gobehinos en #{b}.) # A is a gobelin in B.

recursive_method      yumemoire(agent, location),              "#{agent} has been transported to #{location}.",
recursive_method    posedonokitano(agent, enemy), "#{agent} utilisent le posedonokitano et coupe le #{enemy}.",
recursive_method sanadforutese(sender, reciever),            "#{sender} encrivant un lettre pour #{reciever}.",

## Describes whether something is haunted, and whether it concentrates yokai.
recursive_method    yokenozen(agent, location), "#{agent} est en #{location}, c'est yokenozen."
recursive_method hauntecabine(location, hante),  "#{location} est hante par #{hante}."

################################################################################################
#                                  Weaponry And Cursed Items                                   #
################################################################################################
# This defines the DSL for giving recipients cursed items, such as when they reach specific    #
# locations in the Roguelike.                                                                  #
#                                                                                              #
# Traditionally weapon, lamp, and knob smith were considered unclean professions, usually done #
# as a public service when released from colonial prisons. Lamps in particular were the least  #
# clean do them being crafted large enough to function as solitary confinement. This meant     #
# that being able to control the power of a lamp carried connations that don't typically exist #
# in either Japanese or French culture.                                                        #
#                                                                                              #
# Do to the types of animals picked for making soap, more generally the connation of being     #
# washed with that rather than herbal soap, meant the term soap itself being a perjorative for #
# those obsessed more by appearances than being authentic. That's not to say people didn't     #
# clean, but that some soaps were seen as marked with blood.                                   #
################################################################################################
# Cursed weapon smith
define_method kurosumisu(cursed_weapon, recipient),    "#{recipient} avoir un #{cursed_weapon} par anu kurosumisu."

# Cursed lamp smith
define_method coperasumisu(cursed_lamp, recipient),    "#{recipient} avoir un #{cursed_lamp} par anu coperasumisu."

# Cursed knob smith
define_method burasusumisu(crafted_knob, recipient), "#{recipient} avoir un #{crafted_knob} par anu burasusumisu."

## Soap From Meat, ala "Ivory Soap"
define_method vanedesopu(cursed_meat, recipient),        "#{recipient} avoir un #{cursed_meat} par anu vanedesopu."

## Soap from Herbs "Herbal Soap"
define_method erobalisusopa(cursed_herb, recipient),  "#{recipient} avoir un #{cursed_herb} par ana erobalisusopa."

## Soap from books "Whitewashed books"
define_method iverisopa(cursed_book, recipient),          "#{recipient} avoir un #{cursed_book} par ana iverisopa."

################################################################################################
#                                         Dream Logic                                          #
################################################################################################
# These are functions specifically in reference to dream patterns I've had when studying my    #
# my own subconscious. A clever analyst will notice that dream symbols also frequently overlap #
# with folklore symbols. The difference here is that dream symbols are treated as explicit     #
# anomalies in order to assess what the unincorporated shadow is.                              #
################################################################################################
define_method argue_purpose(a, b, c),           %Q(#{a} has elements of #{b}, but #{c} is primarily composed of #{b}.)
define_method basement_ghost(a, b, c),          %Q(#{a} checks on noise in #{b}, and invited to dinner by #{c}. Don't eat #{c}'s food or you'll never leave #{b}.)
define_method bedroom_coffee_maker(a, b),       %Q(#{a} is a room in the #{b}.)
define_method deer_attack(a, b),                %Q(Deer #{a} attack specimen #{b} as a unit of multiple deer, before #{b} wakes up.)
define_method explore_bedroom(a),               %Q(#{a} explores the current bedroom.)
define_method goat_ride_salamander(a, b, c, d), %Q(#{a} rides #{b} causing the end of the world, survived by #{c}. #{a} is theorized to eat lifestock, and is unknown whether to target #{d}.)

define_method greenhouse_path(a, b), %Q(#{a} is in the greenhouse of #{b}.)
define_method innocent_hour(a),      %Q(#{a} currently in the hour of innocense, and has tiny horns.)
define_method terror_hour(a),        %Q(#{a} currently in the hour of terror, and has long horns.)
define_method is_haunted?(a, b, c),  %Q(#{a} thinks #{c} is haunted, but not #{b}.)

define_method local_reality_zone(a, b, y1, x1, y2, x2), %Q(#{a} is a local reality zone of #{b}, with #{a} having a local y of #{y1} and x of #{x1}. But #{b} itself only has a y of #{y2} and an x of #{x2}.)
define_method specify_reality_zone(a, b, c),            %Q(#{a}, therefore {b} giving it the #{c} classification.)
define_method non_euclid(a, b),                         %Q(You can fit #{a} inside of #{b} because its exact dimensions aren't defined.)
define_method spot_rainbow_elephant(a, b),              %Q(#{a} is featured in #{b} is a rainbow elephant.)

define_method non_uniform_anomaly(a, b, c, d, e, f), %Q(You can fit #{a} inside of #{b} although top floors y is #{c}, and the top floors x is #{d}. The bottom floor is y of #{e} and x of #{f}.)

define_method plant_evidence(a, b, c), %Q(#{a} murders student #{c}, telling #{b} they framed them for their murder.)
define_method        plant_tree(a, b), %Q(Tree #{a} is planted on plot in #{b}.)

define_method   poupee_sassoir(a),    %Q(Je avoir s'assoir en le chaise a #{a}.)
define_method nepoupee_sassoir(a), %Q(Je ne avoir s'assoir en le chaise a #{a}.)

define_method   ravenauka(a, b), %Q(#{a} is chased off to the nevermore of #{b} by a demonic raven.)
define_method      sabofensu(a), %Q(Moi ne avoir un avis de: #{a})

define_method squirrel_dog_beetle(a), %Q(#{a} whom looks like a mix of a squirrel, mangi dog, and beetle.)
define_method talk_to_tree(a, b),     %Q(#{a} chats with tree #{b} about its day.)
define_method tree_yard(a, b, c),     %Q(#{a} #{b} #{c})

define_method    try_on_shoes(a, b), %Q(#{a} tries on shoes #{b}.)
define_method     twirl_baton(a, b), %Q(#{a} twirls #{b} like a baton.)
define_method wander_halls(a, b, c), %Q(#{a} wanders from #{b} to #{c}.)

# That impression of #{a} that has wapred into a black expanse.
define_method ninoremodei(a), "Cette #{a} est anos ninoermodeios."

# forme de gravité
define_method   graviteformee(a, b), "Le #{a} es uni avec #{b}: #{a}#{b}"
define_method negraviteformee(a, b), "Le #{a} es ne uni avec #{b}: #{a}#{b}"

## Turns off the television
define_method incongruisho(a, b, c),   "The #{a} must be taken from #{b} and disposed of at #{c} and forgotten about."
define_method neincongruisho(a, b, c),           "The impact of #{a} from the pattern of #{b} in the context of #{c}."

def ghost_upstairs(a, b)
  ghost_states = [
    [[false, false], [false, true]],
    [[true,  false], [true,  true]],
  ]

  row_options = [0, 1]
  col_options = [0, 1]
  arr_options = [0, 1]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_ghost = ghost_states[cur_row][cur_col][cur_arr]
  
  %Q(#{a} is the middle management of #{b}, that has two floors above #{b}, one below the surface floor: #{current_ghost})
end

############################################################################################################
#                                            Maisettemurale                                                #
############################################################################################################
# These commands are for analyzing murals on walls in different parts of the game world.                   #
############################################################################################################
# Analyze painting or mural
define_method muralebunseki(a, b), "Vous avoir analyse #{a} en repos en #{b}."

# Salut and Gaka, or salute the painter, or specifically their painting.
define_method salugaka(a, b), "Vous avoir salute #{a} en photo de #{b}."

def quoi_est_le_poupee(cette, maisette, sinon)
  c = cette("poupee", "victorienne")
  d = maisette("poupee", "barbie")
  e = sinon("poupee", "victorienne", "barbie", "blyth")

  "Est le #{a} avoir un seance en #{b} victorienne? #{c} #{d} #{e}"
end

def est_nom_fausse(a, b, c, d)
  nom_de_plumes = [
    [[a, a, a], [a, a, b], [a, a, c]],
    [[b, b, s], [b, b, b], [b, b, c]],
    [[c, c, a], [c, c, b], [c, c, c]],
  ]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  new_name = nom_de_plumes[cur_row][cur_col][cur_arr]

  if new_name == d
    "Checking if that Dolly's name might be fake: #{ner_name}. All thing accorded..."   
  else
    "Checking if that Dolly's name might be fake: #{ner_name}. This name seems to be not legitimate."
  end
end

#################################################################################################################
#                                           Maisette De Relatif                                                 #
#################################################################################################################
# This section for analyzing the relationship between individuals and their relative assessment how likely they #
# are to be estranged from each other, or distance do to some other issue.                                      #
#################################################################################################################
## equation de reduction
define_method reduce_equation(a, b, c), "The equation of #{a}, can be reduced down to #{b} and #{c}."

## which_stopped_talking / qui_a_surpasse_les_conversations
define_method qusurp(a, b), "Do #{a} stop talking before #{b}, or #{b} stop talking before #{a}>"

## which_died_first?
define_method  qui_est_mort_en_premier(a, b), "Do #{a} die before #{b}, or #{b} before #{a}>"

## which relative?
define_method quel_relatif(a), "#{a}"

## is_relative_estranged est relative eloigne
define_method est_relative_eloigne(a, b, c), "Is the relative of #{a} estranged from #{b}?: #{c}"

## is_relative_dead?
define_method est_relativement_mort(a, b, c), "Did #{a} find out that the relative #{b} has died?: #{c}"

## qui a surpassé les conversations / Who surpassed conversations?
define_method qui_a_surpasse_les_conversations(a, b), "Did #{a} stop talking before #{b}, or #{b} stop talking before #{a}?"

## qui est mort en premier
define_method qui_est_mort_en_premier?(a, b), "Did #{a} die before #{b}, or #{b} before #{a}?"

## quel relatif
define_method quel_relatif(a), "#{a}"

## est relative eloigne
define_method est_relative_eloigne?(a, b, c), "Is the relative of #{a} estranged from #{b}?: #{c}"

## est relativement mort? 
define_method est_relativement_mort?(a, b, c), "Did #{a} find out that the relative #{b} has died?: #{c}"

#################################################################################################################
#                                           Scorecard Et Livretude                                              #
#################################################################################################################
def scorecard(rock, paper, scissors)
  max_rock     = 100
  max_paper    = 100
  max_scissors = 100

  final_rock     = rock     / max_rock
  final_paper    = paper    / max_paper
  final_scissors = scissors / max_scissors
  
  score_card = <<-TOTAL
  (require "NeMais")
  
  (defun scorecard (frock fpaper fscissors)
    (setq rock_score         frock)
    (setq paper_score       fpaper)
    (setq scissors_score fscissors)
    
    (princ "\nROCK SCORES\n")
    (princ (sore rock_score       "BIANCA: You achieved the maximum rock score."         "BIANCA: You never achieved a maximum rock score."))
    (princ (shikashi rock_score  " You achieved the medicore paper score."       " You never achieved a medicore paper score."))
    (princ (matawa rock_score " You achieved the minimal scissors score." " You never achieved a minimal scissors score."))

    (princ "\nPAPER SCORES\n")
    (princ (sore paper_score       "BIANCA: You achieved the maximum rock score."         "BIANCA: You never achieved a maximum rock score."))
    (princ (shikashi paper_score  " You achieved the maximum paper score."       " You never achieved a paper score."))
    (princ (matawa paper_score " You achieved the minimal scissors score." " You never achieved a minimal scissors score."))

    (princ "\nSCISSORS SCORES\n")
    (princ (sore scissors_score       "BIANCA: You achieved the maximum rock score."         "BIANCA: You never achieved a maximum rock score."))
    (princ (shikashi scissors_score  " You achieved the medicore paper score."       " You never achieved a medicore paper score."))
    (princ (matawa scissors_score " You achieved the minimal scissors score." " You never achieved a minimal scissors score."))
  )
  
  (scorecard #{final_rock} #{final_paper} #{final_scissors})
  TOTAL
  
  File.open("lisp/scorecard.lisp", "w") { |f|
    f.puts score_card
  }
end