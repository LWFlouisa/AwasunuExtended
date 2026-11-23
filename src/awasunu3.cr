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

define_method viola, system("clear")

define_method ast(label, value), [ label, value ]
define_method atom(value), ast(value, "#{value}")

define_method   encrire(input), puts input
define_method encrireln(input), print input

## Intial word order
recursive_method recursive_vos(verb, objet, subjet), print("#{verb} #{objet} #{subjet}, "), File.open("vos_output.awa", "w") { |f| f.puts "encrireln #{verb} #{objet} #{subjet}" }

recursive_method recursive_sov(subjet, objet, verb), print("#{subjet} #{objet} #{verb}, "), File.open("#{s}.awa", "w") { |f| f.puts "encrireln #{subjet} #{objet} #{verb}" }

## Secondary word order
recursive_method recursive_osv(objet, subjet, verb), puts("#{objet} #{subjet} #{verb}.\n"), File.open("object_output.awa", "w") { |f| f.puts "encrireln #{objet} #{subjet} #{verb}" }

recursive_method recursive_ovs(objet, verb, subjet), puts("#{objet} #{verb} #{subjet}.\n"), File.open("object_output.awa", "w") { |f| f.puts "encrireln #{objet} #{verb} #{subjet}" }

################################################################################################
#                                    Recursive Awasunu                                         #
################################################################################################
# recursive_method recursive_encrire(data, outfname, outfile), "#{data}", File.open("#{outfname}.awa", "w") { |f|
  # f.puts %Q(encrire #{outfile})
# }

# recursive_method recursive_encrireln(data, outfname, outfile), "#{data}", File.open("#{outfname}.awa", "w") { |f|
#   f.puts %Q(encrireln #{outfile})
# }

## Recursive Encrire
recursive_method encriref(input, outfname), encrire(input), File.open("#{outfname}.awa", "w") { |f| f.puts "encrireln #{input}"}
obelisk_method   encrireo(input, outfname), input, obelisk("./awasunu #{outfname}")

## Recursive Rphrase
#define_method         cette(noun, adjective), "Cette #{noun} est #{adjective}."
#define_method      maisette(noun, adjective), "Maisette #{noun} est #{adjective}."
#define_method  sinon(noun, adj1, adj2, adj3), "Sinon #{noun} n'est #{adj1} ou #{adj2}, mais c'est #{adj3}."

recursive_method contrastiff(ne, mais, outfname), encrire("#{ne} #{mais}"), File.open("#{outfname}.awa", "w") { |f| f.puts "encrire #{ne}, #{mais}" }
obelisk_method   contrastivo(ne, mais), "#{ne}, #{mais}", obelisk("#{ne}, #{mais}")

## This function may not need recursive osv, vos, or sov.
recursive_method recursive_expression(phrase_one, phrase_two, outfname), "#{phrase_one} #{phrase_two}", File.open("#{outfname}.awa", "w") { |f|
  f.puts %Q(encrireln #{phrase_one} #{phrase_two})
}

recursive_method recursive_pgram(v, o, s), %Q(["#{v}", "#{o}", "#{s}]"), File.open("#{v}.awa", "w") { |f|
  f.puts %Q(#{v} #{o} #{s})
}

recursive_method recursive_ntupe(v, o, s), %Q("[#{v}", "#{o}", "#{s}]"), File.open("#{v}.awa", "w") { |f|
  f.puts %Q(#{v} #{i} #{s})
}

################################################################################################
#                                      Recursive Grammar                                       #
################################################################################################

################################################################################################
################################################################################################
recursive_method recursive_cat(classified_cat, subject, verb, outfile), encrire("#{classified_cat} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "encrireln #{classified_cat}#{subject} #{verb}" }

def chatte_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def chatte_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_dog(classified_dog, subject, verb, outfile), encrire("#{classified_dog} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "#{classified_dog} #{subject} #{verb}" }

def chienne_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def chienne_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_gpig(classified_gpig, subject, verb, outfile), encrire("#{classified_gpig} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "#{classified_dog} #{subject} #{verb}" }

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
recursive_method recursive_hamster(classified_hamster, subject, verb, outfile), encrire("#{classified_hamster} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "#{classified_hamster} #{subject} #{verb}" }

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
recursive_method recursive_lapin(classified_lapin, subject, verb, outfile), encrire("#{classified_lapin} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "#{classified_lapin} #{subject} #{verb}" }

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
recursive_method recursive_lezard(classified_lezard, subject, verb, outfile), encrire("#{classified_lezard} #{subject} #{verb}"), File.open("#{verb}.awa", "a") { |f| f.puts "#{classified_lezard} #{subject} #{verb}" }

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
recursive_method recursive_perroquet(classified_perroquet, subject, verb, outfile), encrire("#{classified_perroquet} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "#{classified_perroquet} #{subject} #{verb}" }

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
recursive_method recursive_porange(classified_perroquet, subject, verb, outfile), encrire("#{classified_poisson_orange} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "#{classified_poisson_orange} #{subject} #{verb}" }

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
recursive_method recursive_loup(classified_loup, subject, verb, outfile), encrire("#{classified_loup} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "encricreln  #{classified_loup} #{subject} #{verb}" }

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
recursive_method recursive_renard(classified_renard, subject, verb, outfile), encrire("#{classified_renard} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "encricreln  #{classified_renard} #{subject} #{verb}" }

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
recursive_method recursive_agneau(classified_agneau, subject, verb, outfile), encrire("#{classified_agneau} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "encricreln  #{classified_agneau} #{subject} #{verb}" }

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
recursive_method recursive_ane(classified_ane, subject, verb, outfile), encrire("#{classified_ane} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "encricreln  #{classified_agneau} #{subject} #{verb}" }

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
recursive_method recursive_canard(classified_canard, subject, verb, outfile), encrire("#{classified_canard} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "encricreln  #{classified_canard} #{subject} #{verb}" }

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
recursive_method recursive_chevre(classified_chevre, subject, verb, outfile), encrire("#{classified_chevre} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "encricreln #{classified_chevre} #{subject} #{verb}" }

def chevre_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def chevre_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end