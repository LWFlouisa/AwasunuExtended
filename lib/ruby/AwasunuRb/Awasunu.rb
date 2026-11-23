module Region
  class UndergroundCity
    def self.battle(insurgent_name)
    end
  end

  class Prison
    def self.guillotine(executee)
    end
  end
end

module NihongoLogique
  class NihongoContrastif
    def self.sore(a, b)
      Obelisk::AwasunuBasic.encrireln("Sora wa #{a} #{b}")
  
      sore = [ a, b ]
  
      File.open("data/japanese/positive/sore_a.txt", "a") { |f|
        f.puts sore[0]
      }

      File.open("data/japanese/positive/sore_b.txt", "a") { |f|
        f.puts sore[1]
      }
    end

    def self.shikashu(a, b)
      Obelisk::AwasunuBasic.encrireln("Shikashi wa #{a} #{b}")
  
      shikashi = [ a, b ]

      File.open("data/japanese/positive/shikashi_a.txt", "a") { |f|
        f.puts shikashi[0]
      }

      File.open("data/japanese/positive/shikashi_b.txt", "a") { |f|
        f.puts shikashi[1]
      }
    end

    def self.matawa(a, b, c, d)
      Obelisk::AwasunuBasic.encrireln("Matawa sora #{a} ni wa #{b} naishi #{c}, shikashi wa #{c}.")

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
    def self.nisore(a, b)
      Obelisk::AwasunuBasic.encrireln("Sono gyaku sora wa #{a} #{b}")
  
      nisore = [ a, b ]

      File.open("data/japanese/negative/nisore_a.txt", "a") { |f|
        f.puts nisore[0]
      }

      File.open("data/japanese/negative/nisore_b.txt", "a") { |f|
        f.puts nisore[1]
      }
    end

    def self.nishikashi(a, b)
      Obelisk::AwasunuBasic.encrireln("Sono gyaku shikashi wa #{a} #{b}.")

      nishikashi = [ a, b ]

      File.open("data/japanese/negative/matawa_nest_a.txt", "a") { |f|
        f.puts nishikashi[0]
      }

      File.open("data/japanese/negative/matawa_nest_b.txt", "a") { |f|
        f.puts nishikashi[1]
      }
    end

    def self.nimatawa(a, b, c, d)
      Obelisk::AwasunuBasic.encrireln("Sono gyaku matawa sora #{a} wa #{b} naishi #{c}, shikashi wa #{d}")

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

    ## Japanese Equivalent constraint logic
    def nai(fact_one, fact_two)
      Obelisk::AwasunuBasic.encrireln("Nai [ #{fact_one} ] anata [ #{fact_two} ], ")
    end

    def shikasa(fact_three)
      Obelisk::AwasunuBasic.encrireln("shikashi #{fact_three}")
    end
  end

  class EsstimateProbability
    def self.nombres(*args)
      bot_name = "BIANCA"

      x, interval, first_interval, second_interval = args

      ## Discrete
      cette_nombre = Proc.new { | x, interval |
        x > interval ? "#{bot_name}: #{x} has reached the limit in size." : "#{bot_name}: #{x} has reached the limit in size."
      }

      maisette_nombre = Proc.new { | x, interval |
        x < interval ? "#{bot_name}: #{x} has reached the limit in smallness." : "#{bot_name}: #{x} has not reached the limit in smallness."
      }

      sinon_nombre = Proc.new { | x, first_interval, second_interval |
        x > first_interval and x < second_interval ? "#{bot_name}: #{x} has reached the limit in smallness." : "#{bot_name}: #{x} has not reached the limit in smallness."
      }

      cette_nombre.call(x, interval)
      maisette_nombre.call(x, interval)
      sinon_nombre.call(x, first_interval, second_interval)
    end

    def self.kosan(*args)
      bot_name = "BIANCA"

      x, interval, first_interval, second_interval = args

      sore_kosan = Proc.new { | x, probability |
        x > probability ? "#{bot_name}: #{x} has reached the limit in probability." : "#{bot_name}: #{x} has not reached the limit in probability."
      }

      shikashi_kosan = Proc.new { | x |
        x < probability ? "#{bot_name}: #{x} has reached the limit in probability." : "#{bot_name}: #{x} has not reached the limit in probability."
      }

      matawa_kosan = Proc.new { | x, first_probability, second_probability |
        x > first_probability and x < second_probability ? "#{bot_name}: #{x} is floating around medium negative probability." : "#{bot_name}: #{x} is not floating around medium negative probability."
      }

      sore_kosan.call(x, interval)
      shikashi_kosan.call(x, interval)
      matawa_kosan.call(x, first_interval, second_interval)
    end
  end
end

#############################################################################################################
#                                               Obelisk DSL                                                 #
#############################################################################################################
###########################################################################################
#                         Data Recycling And Memory Management                            #
###########################################################################################
# Focus on preserving knowledge through burial urns inside of obelisks. This started out  #
# as an esolang, and gradually became more useful for real world problems, such as the    #
# issue of catestrophic forgetting in AI models.                                          #
###########################################################################################
module Obelisk

  #######################################################################################
  #                                      Awasunu                                        #
  #######################################################################################
  # This handles basic string generation for the scripting language.                    #
  #######################################################################################
  class AwasunuBasic
    def self.viola
      system("clear")
    end

    def self.ast(label, value)
      [ label, value ]
    end

    def self.atom(value)
      Obelisk::AwasunuBasic.ast(value, "#{value}")
    end

    def self.encrire(input)
      print input
    end

    def self.encrireln(input)
      puts input
    end

    ## Name of interactive terminal.
    def self.documentation(title, platform)
      Obelisk::AwasunuBasic.encrireln("#{title} on #{platform}")
    end

    def self.sangehommage(prompt)
      print "#{prompt} "; read_line = gets.chomp
    end

    def self.parle_merci(prompt, output)
      print "#{prompt} "; puts output
    end

    def self.objet(mot_genre, mot_specifique)
      "#{mot_genre} #{mot_specifique}"
    end

    def self.subjet(pronoun)
      "#{pronoun}"
    end

    def self.verb(action)
      "#{action}."
    end

    def self.osv(o, s, v)
      puts "#{o} #{s} #{v}".strip
    end

    def self.sov(s, o, v)
      puts "#{s} #{o} #{v}".strip
    end

    def self.expression(phrase_one, phrase_two)
      Obelisk::AwasunuBasic.encrireln(%Q(["#{phrase_one}", "#{phrase_two}"]\n))
    end

    def self.parle_grammaire(v, o, s)
      Obelisk::AwasunuBasic.encrireln("['#{v}', '#{o}','#{s}']")
    end

    def self.nihongotupelo(v, o, s)
      Obelisk::AwasunuBasic.encrireln("['#{v}', '#{o}', '#{s}']")
    end

    ## Grammar
    def self.ne(first_noun, second_noun)
      Obelisk::AwasunuBasic.encrire("Ne #{first_noun} ou #{second_noun}, ")
    end

    def self.mais(third_noun)
      Obelisk::AwasunuBasic.encrireln("mais c'est #{third_noun}.")
    end

    def self.cette(noun, adjective)
      Obelisk::AwasunuBasic.encrire("Cette #{noun} est #{adjective}.")
    end

    def self.maisette(noun, adjective)
      Obelisk::AwasunuBasic.encrire("Maisette #{noun} est #{adjective}.")
    end

    def self.sinon(noun, adj1, adj2, adj3)
      Obelisk::AwasunuBasic.encrire("Sinon #{noun} n'est #{adj1} ou #{adj2}, mais c'est #{adj3}.")
    end

    def self.parle(phrase)
      Obelisk::AwasunuBasic.encrireln(phrase)
    end

    def self.bokette(phrase)
      sleep(1.5)
  
      Obelisk::AwasunuBasic.parle(phrase)
    end

    def self.ouvert(a, b, c, d, e, g)
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

    def self.vexpress(*args)
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

    ################################################################################################
    #                                Conlang Specific Functionality                                #
    ################################################################################################
    def self.yumemoire(agent, location)
      Obelisk::AwasunuBasic.encrireln("#{agent} has been transported to #{location}.")
    end

    def self.posedonokitano(agent, enemy)
      Obelisk::AwasunuBasic.encrireln("#{agent} utilisent le posedonokitano et coupe le #{enemy}.")
    end

    def self.sanadforutese(sender, reciever)
      Obelisk::AwasunuBasic.encrireln("#{sender} encrivant un lettre pour #{reciever}.")
    end

    ## Describes whether something is haunted, and whether it concentrates yokai.
    def self.yokenozen(agent, location)
      Obelisk::AwasunuBasic.encrireln("#{agent} est en #{location}, c'est yokenozen.")
    end

    def self.hauntecabine(location, hante)
      Obelisk::AwasunuBasic.encrireln("#{location} est hante par #{hante}.")
    end

    ### Dialectical differences ( aka aliases )

    # Climb hidden latter into cobblestone basement.
    def self.entrerokku(agent, entrance, basement)
      Obelisk::AwasunuBasic.encrireln("#{agent} entreroche dans #{basement}.")
    end

    #### Ninhongo Parlez-Vous
    def self.seibetsu(word_class)
      "#{word_class}"
    end

    def self.ejento(agent_name)
      "#{agent_name}"
    end

    def self.keiyoshi(adjective)
      "#{adjective}"
    end

    def self.shudai(subject)
      "#{subject}"
    end

    def self.doshi(action)
      "#{action}"
    end

    def self.fukishi(adverb)
      "#{adverb}"
    end

    def self.nihongo(arg1, arg2, arg3, arg4, arg5, arg6)
      Obelisk::AwasunuBasic.encrireln("#{arg1} #{arg2} #{arg3} #{arg4} #{arg5} #{arg6}")
    end

    ## Japanese Contrastive
    def sore(a, b)
      Obelisk::AwasunuBasic.encrireln("Sora wa #{a} #{b}")
  
      sore = [ a, b ]
  
      File.open("data/japanese/positive/sore_a.txt", "a") { |f|
        f.puts sore[0]
      }

      File.open("data/japanese/positive/sore_b.txt", "a") { |f|
        f.puts sore[1]
      }
    end

    def self.shikashu(a, b)
      Obelisk::AwasunuBasic.encrireln("Shikashi wa #{a} #{b}")
  
      shikashi = [ a, b ]

      File.open("data/japanese/positive/shikashi_a.txt", "a") { |f|
        f.puts shikashi[0]
      }

      File.open("data/japanese/positive/shikashi_b.txt", "a") { |f|
        f.puts shikashi[1]
      }
   end

   def self.matawa(a, b, c, d)
      Obelisk::AwasunuBasic.encrireln("Matawa sora #{a} ni wa #{b} naishi #{c}, shikashi wa #{c}.")

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
    def self.nisore(a, b)
      Obelisk::AwasunuBasic.encrireln("Sono gyaku sora wa #{a} #{b}")
  
      nisore = [ a, b ]

      File.open("data/japanese/negative/nisore_a.txt", "a") { |f|
        f.puts nisore[0]
      }

      File.open("data/japanese/negative/nisore_b.txt", "a") { |f|
        f.puts nisore[1]
      }
    end

    def self.nishikashi(a, b)
      Obelisk::AwasunuBasic.encrireln("Sono gyaku shikashi wa #{a} #{b}.")

      nishikashi = [ a, b ]

      File.open("data/japanese/negative/matawa_nest_a.txt", "a") { |f|
        f.puts nishikashi[0]
      }

      File.open("data/japanese/negative/matawa_nest_b.txt", "a") { |f|
        f.puts nishikashi[1]
      }
    end

    def self.nimatawa(a, b, c, d)
      Obelisk::AwasunuBasic.encrireln("Sono gyaku matawa sora #{a} wa #{b} naishi #{c}, shikashi wa #{d}")

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

    ## Japanese Equivalent constraint logic
    def self.nai(fact_one, fact_two)
      Obelisk::AwasunuBasic.encrire("Nai [ #{fact_one} ] anata [ #{fact_two} ], ")
    end

    def self.shikasa(fact_three)
      Obelisk::AwasunuBasic.encrireln("shikashi #{fact_three}")
    end

    ################################################################################################
    #                                Who What When Where Why How                                   #
    ################################################################################################
    #
    ################################################################################################
    def self.nom(a)
      Obelisk::AwasunuBasic.encrireln("Mes nom est #{a}.")
    end

    def self.buttai(b)
      Obelisk::AwasunuBasic.encrireln("C'est un/une #{b}.")
    end

    def self.temps(c)
      Obelisk::AwasunuBasic.encrireln("Le temp est #{c}.")
    end

    def self.fukin(d)
      Obelisk::AwasunuBasic.encrireln("Je suis en le voisinage de #{d}.")
    end

    def self.motif(e)
      Obelisk::AwasunuBasic.encrireln("Mes raison pour ce est #{e}.")
    end

    def self.hono(f)
      Obelisk::AwasunuBasic.encrireln("Mois methode pour le fabrication mes objectifs est #{f}.")
    end

    def self.jiko(a, b, c)
      Obelisk::AwasunuBasic.encrireln("Vous avoir damande moi #{a} a propos #{b} par #{c}.")
    end

    ## Unite specific people at a time and place
    def self.unir(a, b, c)
      Obelisk::AwasunuBasic.encrireln("Je avoir unif avec #{a} avec #{b} a #{c}.")
    end

    def self.genkei(a)
      Obelisk::AwasunuBasic.encrireln("Je suis un etudiant a propos #{a}.")
    end

    def self.ninom(a)
      Obelisk::AwasunuBasic.encrireln("Mes nom est ne #{a}.")
    end

    def self.nibuttai(b)
      Obelisk::AwasunuBasic.encrireln("C'est non un/une #{b}.")
    end

    def self.netemps(c)
      Obelisk::AwasunuBasic.encrireln("Le temp est ne #{c}.")
    end

    def self.nifukin(d)
      Obelisk::AwasunuBasic.encrireln("Je suis ne en le voisinage de #{d}.")
    end

    def self.nemotif(e)
      Obelisk::AwasunuBasic.encrireln("Mes raison pour ce est ne #{e}.")
    end

    def self.nihono(f)
      Obelisk::AwasunuBasic.encrireln("Mois methode pour le fabrication mes objectifs est ne #{f}.")
    end

    ## Disunification
    def self.neunir(a, b, c)
      Obelisk::AwasunuBasic.encrireln("Je ne avoir unif avec #{a} avec #{b} a #{c}.")
    end

    def self.nijiko(a, b, c)
      Obelisk::AwasunuBasic.encrireln("Vous ne avoir damande moi #{a} a propos #{b} par #{c}."
    end

    def self.nigenkei(a)
      Obelisk::AwasunuBasic.encrireln("Je suis ne un etudiant a propos #{a}.")
    end

    def self.musee_comprime(a)
      Obelisk::AwasunuBasic.encrireln("cette musee comprime #{a}.")
    end

    def self.noremodei(a)
      Obelisk::AwasunuBasic.encrireln("Cette #{a} est noermodeios.")
    end

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
    def self.kurosumisu(cursed_weapon, recipient)
      Obelisk::AwasunuBasic.encrireln("#{recipient} avoir un #{cursed_weapon} par anu kurosumisu.")
    end

    # Cursed lamp smith
    def self.coperasumisu(cursed_lamp, recipient)
      Obelisk::AwasunuBasic.encrireln("#{recipient} avoir un #{cursed_lamp} par anu coperasumisu.")
    end

    # Cursed knob smith
    def self.burasusumisu(crafted_knob, recipient)
      Obelisk::AwasunuBasic.encrireln("#{recipient} avoir un #{crafted_knob} par anu burasusumisu.")
    end

    ## Soap From Meat, ala "Ivory Soap"
    def self.vanedesopu(cursed_meat, recipient)
      Obelisk::AwasunuBasic.encrireln("#{recipient} avoir un #{cursed_meat} par anu vanedesopu.")
    end

    ## Soap from Herbs "Herbal Soap"
    def self.erobalisusopa(cursed_herb, recipient)
      Obelisk::AwasunuBasic.encrireln("#{recipient} avoir un #{cursed_herb} par ana erobalisusopa.")
    end

    ## Soap from books "Whitewashed books"
    def self.iverisopa(cursed_book, recipient)
      Obelisk::AwasunuBasic.encrireln("#{recipient} avoir un #{cursed_book} par ana iverisopa.")
    end

    ################################################################################################
    #                                        French Actions                                        #
    ################################################################################################
    def self.mange(a, b)
      Obelisk::AwasunuBasic.encrireln("Mange un #{a} en #{b}.")
    end

    def self.coupe(a, b)
      Obelisk::AwasunuBasic.encrireln("Coupe un #{a} en #{b}.")
    end

    def self.cuicre(a, b)
      Obelisk::AwasunuBasic.encrireln("Cuicre un #{a} en #{b}.")
    end

    def self.baguette(a, b)
      Obelisk::AwasunuBasic.encrireln("Baguette un #{a} en #{b}.")
    end

    def self.guillotine(verb, subject)
      Obelisk::AwasunuBasic.encrireln("Guillotine #{verb} #{subject}.")
    end

    def self.ax_head(verb, subject)
      Obelisk::AwasunuBasic.encrireln("Tete Du Crescent #{verb} #{subject}.")
    end

    def self.roboparle(verb, subject)
      Obelisk::AwasunuBasic.encrireln("Le robo #{verb} #{subject}.")
    end

    def self.parle_a_robo(object, subject, verb, your_name)
      Obelisk::AwasunuBasic.encrireln("#{your_name}: #{subject} #{verb} #{object}")
    end

    ################################################################################################
    #                                         Dream Logic                                          #
    ################################################################################################
    # These are functions specifically in reference to dream patterns I've had when studying my    #
    # my own subconscious. A clever analyst will notice that dream symbols also frequently overlap #
    # with folklore symbols. The difference here is that dream symbols are treated as explicit     #
    # anomalies in order to assess what the unincorporated shadow is.                              #
    ################################################################################################
    def Obelisk::AwasunuBasic.encrireln(argue_purpose(a, b, c)
      Obelisk::AwasunuBasic.encrireln(%Q(#{a} has elements of #{b}, but #{c} is primarily composed of #{b}.))
    end

    def self.basement_ghost(a, b, c)
      Obelisk::AwasunuBasic.encrireln(%Q(#{a} checks on noise in #{b}, and invited to dinner by #{c}. Don't eat #{c}'s food or you'll never leave #{b}.))
    end

    def self.bedroom_coffee_maker(a, b)
      Obelisk::AwasunuBasic.encrireln(%Q(#{a} is a room in the #{b}.))
    end

    def self.deer_attack(a, b)
      Obelisk::AwasunuBasic.encrireln(%Q(Deer #{a} attack specimen #{b} as a unit of multiple deer, before #{b} wakes up.))
    end

    def self.explore_bedroom(a)
      Obelisk::AwasunuBasic.encrireln(%Q(#{a} explores the current bedroom.))
    end

    def self.goat_ride_salamander(a, b, c, d)
      Obelisk::AwasunuBasic.encrireln(%Q(#{a} rides #{b} causing the end of the world, survived by #{c}. #{a} is theorized to eat lifestock, and is unknown whether to target #{d}.))
    end

    def self.greenhouse_path(a, b)
      Obelisk::AwasunuBasic.encrireln(%Q(#{a} is in the greenhouse of #{b}.))
    end

    def self.innocent_hour(a)
      Obelisk::AwasunuBasic.encrireln(%Q(#{a} currently in the hour of innocense, and has tiny horns.))
    end

    def self.terror_hour(a)
      Obelisk::AwasunuBasic.encrireln(%Q(#{a} currently in the hour of terror, and has long horns.))
    end

    def self.is_haunted(a, b, c)
      Obelisk::AwasunuBasic.encrireln(%Q(#{a} thinks #{c} is haunted, but not #{b}.))
    end

    def self.local_reality_zone(a, b, y1, x1, y2, x2)
      Obelisk::AwasunuBasic.encrireln(%Q(#{a} is a local reality zone of #{b}, with #{a} having a local y of #{y1} and x of #{x1}. But #{b} itself only has a y of #{y2} and an x of #{x2}.))
    end

    def self.specify_reality_zone(a, b, c)
      Obelisk::AwasunuBasic.encrireln(%Q(#{a}, therefore {b} giving it the #{c} classification.))
    end

    def self.non_euclid(a, b)
      Obelisk::AwasunuBasic.encrireln(%Q(You can fit #{a} inside of #{b} because its exact dimensions aren't defined.))
    end

    def self.spot_rainbow_elephant(a, b)
      Obelisk::AwasunuBasic.encrireln(%Q(#{a} is featured in #{b} is a rainbow elephant.))
    end

    def self.non_uniform_anomaly(a, b, c, d, e, f)
      Obelisk::AwasunuBasic.encrireln(%Q(You can fit #{a} inside of #{b} although top floors y is #{c}, and the top floors x is #{d}. The bottom floor is y of #{e} and x of #{f}.))
    end

    def self.plant_evidence(a, b, c)
      Obelisk::AwasunuBasic.encrireln(%Q(#{a} murders student #{c}, telling #{b} they framed them for their murder.))
    end

    def self.plant_tree(a, b)
      Obelisk::AwasunuBasic.encrireln(%Q(Tree #{a} is planted on plot in #{b}.))
    end

    def self.poupee_sassoir(a)
      Obelisk::AwasunuBasic.encrireln(%Q(Je avoir s'assoir en le chaise a #{a}.))
    end

    def self.nepoupee_sassoir(a)
      Obelisk::AwasunuBasic.encrireln(%Q(Je ne avoir s'assoir en le chaise a #{a}.))
    end

    def self.ravenauka(a, b)
      Obelisk::AwasunuBasic.encrireln(%Q(#{a} is chased off to the nevermore of #{b} by a demonic raven.))
    end

    def self.sabofensu(a)
      Obelisk::AwasunuBasic.encrireln(%Q(Moi ne avoir un avis de: #{a}))
    end

    def self.squirrel_dog_beetle(a)
      Obelisk::AwasunuBasic.encrireln(%Q(#{a} whom looks like a mix of a squirrel, mangi dog, and beetle.))
    end

    def self.talk_to_tree(a, b)
      Obelisk::AwasunuBasic.encrireln(%Q(#{a} chats with tree #{b} about its day.))
    end

    def self.tree_yard(a, b, c)
      Obelisk::AwasunuBasic.encrireln(%Q(#{a} #{b} #{c}))
    end

    def self.try_on_shoes(a, b)
      Obelisk::AwasunuBasic.encrireln(%Q(#{a} tries on shoes #{b}.))
    end

    def self.twirl_baton(a, b)
      Obelisk::AwasunuBasic.encrireln(%Q(#{a} twirls #{b} like a baton.))
    end

    def self.wander_halls(a, b, c)
      Obelisk::AwasunuBasic.encrireln(%Q(#{a} wanders from #{b} to #{c}.))
    end

    # That impression of #{a} that has wapred into a black expanse.
    def self.ninoremodei(a)
      Obelisk::AwasunuBasic.encrireln("Cette #{a} est anos ninoermodeios.")
    end

    # forme de gravité
    def self.graviteformee(a, b)
      Obelisk::AwasunuBasic.encrireln("Le #{a} es uni avec #{b}: #{a}#{b}")
    end

    def self.negraviteformee(a, b)
      Obelisk::AwasunuBasic.encrireln("Le #{a} es ne uni avec #{b}: #{a}#{b}")
    end

    ## Turns off the television
    def self.incongruisho(a, b, c)
      Obelisk::AwasunuBasic.encrireln("The #{a} must be taken from #{b} and disposed of at #{c} and forgotten about.")
    end

    def self.neincongruisho(a, b, c)
      Obelisk::AwasunuBasic.encrireln("The impact of #{a} from the pattern of #{b} in the context of #{c}."
    end

    def self.ghost_upstairs(a, b)
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
  
      Obelisk::AwasunuBasic.encrireln(%Q(#{a} is the middle management of #{b}, that has two floors above #{b}, one below the surface floor: #{current_ghost}))
    end

    ################################################################################################
    #                                      Self Interpretation                                     #
    ################################################################################################
    def self.recursive_encrire(input, outfname)
      Obelisk::AwasunuBasic.encrireln(input)

      statement = <<-PHRASE
      (encrireln "#{input}")
      PHRASE

      File.open("#{outfname}.awa", "w") { |f|
        f.puts statement
      }

      Obelisk::AwasunuBasic.encrireln(input)
    end

    def self.recursive_documentation(title, description, outfname)
      docs = <<-DOCUMENTATION
      (docs "#{title}" "#{description}")
      DOCUMENTATION

      File.open("#{outfname}.awa", "w") { |f|
        f.puts docs
      }

      Obelisk::AwasunuBasic.documentation(title, description)
    end

    def self.recursive_osv(o, s, v, outfname)
      output = <<-OSV
      (osv "#{o}" "#{s}" "#{v}")
      OSV

      File.open("#{outfname}.awa", "w") { |f|
        f.puts output
      }

      Obelisk::AwasunuBasic.sov(s, o ,v)
    end

    def self.recursive_sov(s, o, v, outfname)
      output = <<-SOV
      (sov "#{s}" "#{o}" "#{v}")
      SOV

      File.open("#{outfname}.awa", "w") { |f|
        f.puts output
      }

      Obelisk::AwasunuBasic.osv(o, s, v)
    end

    def self.recursive_expression(phrase_one, phrase_two, outfname)
      output = <<-EXPRESS
      expression #{phrase_one} #{phrase_two}
      EXPRESS

      File.open("#{outfname}.awa", "w") { |f|
        f.puts output
      }

      Obelisk::AwasunuBasic.expression(phrase_one, phrase_two)
    end

    def self.recursive_contrastif(first_noun, second_noun, third_noun, outfname)
      output = <<-EXPRESS
      (contrastif "#{first_noun}" "#{second_noun}" "#{third_noun}")
      EXPRESS

      File.open("#{outfname}.awa", "w") { |f|
        f.puts output
      } 

      ## Pre
      ne(first_noun, second_noun)

      mais(third_noun)
    end
  end

  #################################################################################################################
  #                                             Expanding Self Parsing                                            #
  #################################################################################################################
  # This aims to extend the functionality of self-parsing in the scripting language without making it reliant on  #
  # any given honorific.                                                                                          #
  #################################################################################################################
  class SelfTranslate
    def self.express_noun_first(*args)
      o1, s1, v1, s2, o2, v2, outfname = args

      expression = <<-EXPRESS
      (expression "#{o1}" "#{s1}" "#{v1}" "#{s2}" "#{o2}" "#{v2}")
      EXPRESS

      File.open("scripts/#{outfname}.awa", "w") { |f|
        f.puts expression
      }

      phrase_one = "#{o1} #{s1} #{v1}, "
      phrase_two = "#{s2} #{o2} #{v2}."

      Obelisk::AwasunuBasic.expression(phrase_one, phrase_two)
    end

    def self.express_action_first(*args)
      v1, o1, v1, s2, o2, v2, outfname = args

      expression = <<-EXPRESS
      (expression "#{v1}" "#{o1}" "#{v1}" "#{s2}" "#{o2}" "#{v2}")
      EXPRESS

      File.open("scripts/#{outfname}.awa", "w") { |f|
        f.puts expression
      }

      phrase_one = "#{v1} #{o1} #{s1}, "
      phrase_two = "#{s2} #{o2} #{v2}."

      Obelisk::AwasunuBasic.expression(phrase_one, phrase_two)
    end

    def self.express_negative_constraints(*args)
      first_noun1, second_noun1, third_noun1,
      first_noun2, second_noun2, third_noun2,
      first_noun3, second_noun3, third_noun3, outfname1, outfname2, outfname3 = args

      negative_constraint_one = <<-NEGCONST1
      (ne "#{first_noun1}" "#{second_noun1}")
      (mais "#{third_noun1}")
      NEGCONST1

      negative_constraint_two = <<-NEGCONST2
      (ne "#{first_noun2}" "#{second_noun2}")
      (mais "#{third_noun2}")
      NEGCONST2

      negative_constraint_tre = <<-NEGCONST3
      (ne "#{first_noun3}" "#{second_noun3}")
      (mais "#{third_noun3}")
      NEGCONST3

      # Directly prints out to terminal what's written to file.
      puts "__#{outfname1}__"
      Obelisk::AwasunuBasic.ne(first_noun1, second_noun1); Obelisk::AwasunuBasic.mais(third_noun1)

      puts "__#{outfname2}__"
      Obelisk::AwasunuBasic.ne(first_noun2, second_noun2); Obelisk::AwasunuBasic.mais(third_noun2)

      puts "__#{outfname3}__"
      Obelisk::AwasunuBasic.ne(first_noun3, second_noun3); Obelisk::AwasunuBasic.mais(third_noun3)

      # Writing the actual three IR representations.
      Obelisk::AwasunuBasic.ouvert(outfname1, negative_constraint_one,
                                   outfname2, negative_constraint_two,
                                   outfname3, negative_constraint_tre)
    end
  end

  class DataRecycling
    #################################################################################################################
    #                                                Memoricimetiere                                                #
    #################################################################################################################
    def self.obelisk(old_data)
      old_graveyard = File.read_lines("mce/urn.txt").shuffle
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

    def self.obelisk_shell(old_data)
      old_graveyard = File.read_lines("mce/surn.txt").shuffle
      size_limit    = old_graveyard.size.to_i
      index = 0

      File.open("memoricimetiere/surn.txt", "w") { |f|
        f.puts old_data
      
        size_limit.times do
          f.puts old_graveyard[index]
          
          index = index + 1
        end
      }
    end

    def self.obelisk_repl(old_data)
      old_graveyard = File.read_lines("mce/aurn.txt").shuffle
      size_limit    = old_graveyard.size.to_i
      index = 0

      File.open("memoricimetiere/aurn.txt", "w") { |f|
        f.puts old_data
      
        size_limit.times do
          f.puts old_graveyard[index]
          
          index = index + 1
        end
      }
    end

    def self.three_plot_burial(father, mother, child)
      buried_fathers  = File.read_lines("mce/family/father.txt").uniq.sort
      buried_mothers  = File.read_lines("mce/family/mother.txt").uniq.sort
      buried_children = File.read_lines("mce/family/child.txt").uniq.sort

      File.open("mce/family/father.txt", "w") { |f|
        f.puts father
        f.puts buried_fathers
      }
  
      File.open("mce/family/mother.txt", "w") { |f|
        f.puts mother
        f.puts buried_mothers
      }
  
      File.open("mce/family/child.txt", "w") { |f|
        f.puts child
        f.puts buried_children
      }
    end

    def self.four_plot_burial(father, mother, brother, sister)
      buried_fathers  = File.read_lines("mce/family/father.txt").uniq.sort
      buried_mothers  = File.read_lines("mce/family/mother.txt").uniq.sort
      buried_brothers = File.read_lines("mce/family/brother.txt").uniq.sort
      buried_sisters  = File.read_lines("mce/family/sister.txt").uniq.sort

      File.open("mce/family/father.txt", "w") { |f|
        f.puts father
        f.puts buried_fathers
      }
  
      File.open("mce/family/mother.txt", "w") { |f|
        f.puts mother
        f.puts buried_mothers
      }
  
      File.open("mce/family/brother.txt", "w") { |f|
        f.puts brother
        f.puts buried_brothers
      }

      File.open("mce/family/sister.txt", "w") { |f|
        f.puts sister
        f.puts buried_sisters
      }
    end

    def self.scatter_ashes
      old_graveyard = File.read_lines("mce/urn.txt").uniq.sort.shuffle
      size_limit    = old_graveyard.size.to_i
      index         = 0
  
      size_limit.times do
        puts old_graveyard[index]
  
        index = index + 1
      end
    end

    def self.scatter_shells
      old_graveyard = File.read_lines("mce/surn.txt").uniq.sort.shuffle
      size_limit    = old_graveyard.size.to_i
      index         = 0
  
      size_limit.times do
        system("#{old_graveyard[index]}")
  
        index = index + 1
      end
    end

    def self.scatter_awasunu
      old_graveyard = File.read_lines("mce/aurn.txt").uniq.sort.shuffle
      size_limit    = old_graveyard.size.to_i
      index         = 0
  
      size_limit.times do
        current_line = old_graveyard[index]
  
        ## Trims syntactical munk fruit.
        current_line = current_line.tr ")", ""  
        current_line = current_line.tr "(", ""
        current_line = current_line.tr %q("), %q()

        tokens       = current_line.split(" ")
        total_tokens = tokens.size.to_i
        token_index  = 0
    
        ## The actual tokens you'll be parsing.
        parsed_tokens = []

        if total_lines > 0
          total_lines.times do

            current_line = read_file[index]
  
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
              if    parsed_tokens[0] ==  "#"
              elsif parsed_tokens[0] == "--"
              elsif parsed_tokens[0] ==  ";"
              elsif parsed_tokens[0] ==  ""

              ###################################################################################################
              #                                       Francais Interpreter                                      #
              ###################################################################################################
              elsif parsed_tokens[0] == "viola"
                system("clear")
              elsif parsed_tokens[0] == "encrire"
                new_index  = 0
                size_limit = parsed_tokens.size.to_i
          
                size_limit.times do
                  new_output = parsed_tokens[new_index]
            
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
                  new_output = parsed_tokens[new_index]
            
                  if new_output == "encrireln"
                  else
                    print "#{new_output} "
                  end
            
                  new_index = new_index + 1
                end

                puts " "
              elsif parsed_tokens[0] == "docs"
                documentation(parsed_tokens[1], parsed_tokens[2])
              elsif parsed_tokens[0] == "osv"
                osv(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
              elsif parsed_tokens[0] == "sov"
                sov(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
              elsif parsed_tokens[0] == "expression"
                puts expression(osv(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3]),
                                sov(parsed_tokens[4], parsed_tokens[5], parsed_tokens[6]))
              elsif parsed_tokens[0] == "pgram"
                puts parle_grammaire(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
              elsif parsed_tokens[0] == "ntupe"
                puts nihongotupelo(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
              elsif parsed_tokens[0] == "contrastif"
                puts ne(parsed_tokens[1], parsed_tokens[2])

                puts mais(parsed_tokens[3])
              elsif parsed_tokens[0] == "cemase"
                puts cette(parsed_tokens[1], parsed_tokens[2])

                puts maisette(parsed_tokens[3], parsed_tokens[4])

                puts sinon(parsed_tokens[5], parsed_tokens[6], parsed_tokens[7], parsed_tokens[8])
              elsif parsed_tokens[0] == "ouvert"
                ouvert(parsed_tokens[1], parsed_tokens[2],
                       parsed_tokens[3], parsed_tokens[4],
                       parsed_tokens[5], parsed_tokens[6])

              ###################################################################################################
              #                                   Express Negative Constraints                                  #
              ###################################################################################################
              elsif parsed_tokens[0] == "exneg"
                express_negative_constraints(parsed_tokens[0],  parsed_tokens[1],  parsed_tokens[2],
                                             parsed_tokens[3],  parsed_tokens[4],  parsed_tokens[5],
                                             parsed_tokens[6],  parsed_tokens[7],  parsed_tokens[8],
                                             parsed_tokens[9], parsed_tokens[10], parsed_tokens[11])

              ###################################################################################################
              #                                         Metaprogramming                                         #
              ###################################################################################################
              elsif parsed_tokens[0] == "encrireo"
                recursive_encrire(parsed_tokens[1], parsed_tokens[2])
              elsif parsed_tokens[0] == "mdocs"
                recursive_documentation(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
              elsif parsed_tokens[0] == "mosv"
                recursive_osv(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3], parsed_tokens[4])
              elsif parsed_tokens[0] == "msov"
                recursive_sov(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3], parsed_tokens[4])
              elsif parsed_tokens[0] == "mexp"
                recursive_expression(parsed_tokens[0], parsed_tokens[1], parsed_tokens[2])
              elsif parsed_tokens[0] == "mcon"
                recursive_contrastif(parsed_tokens[0], parsed_tokens[1], parsed_tokens[2])

              ###################################################################################################
              #                                       Nihongo Interpreter                                       #
              ###################################################################################################
              elsif parsed_tokens[0] == "sore"
                puts sore(parsed_tokens[1], parsed_tokens[2])
              elsif parsed_tokens[0] == "shikashu"
                puts shikashu(parsed_tokens[1], parsed_tokens[2])
              elsif parsed_tokens[0] == "matawa"
                puts shikashu(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3], parsed_tokens[4])
              elsif parsed_tokens[0] == "nai"
                puts shikashu(parsed_tokens[1], parsed_tokens[2])
              elsif parsed_tokens[0] == "shikasa"
                puts shikasha(parsed_tokens[1])

              ###################################################################################################
              #                                     Yumemoire Interpreter                                       #
              ###################################################################################################
              elsif parsed_tokens[0] == "yumo"
                yumemoire(parsed_tokens[1], parsed_tokens[2])
              elsif parsed_tokens[0] == "pokita"
                posedonokitano(parsed_tokens[1], parsed_tokens[2])
              elsif parsed_tokens[0] == "safote"
                sanadforutese(parsed_tokens[0], parsed_tokens[1])
              elsif parsed_tokens[0] == "yono"
                yokenozen(parsed_tokens[0], parsed_tokens[1])
              elsif parsed_tokens[0] == "haunt"
                hauntecabine(parsed_tokens[0], parsed_tokens[1])
              elsif parsed_tokens[0] == "entre"
                entrerokku(parsed_tokens[0], parsed_tokens[1], parsed_tokens[2])

              ###################################################################################################
              #                                         Investigatif                                            #
              ###################################################################################################
              elsif parsed_tokens == "nom"
                nom(parsed_tokens[1])
              elsif parsed_tokens == "buttai"
                buttai(parsed_tokens[1])
              elsif parsed_tokens == "temps"
                temps(parsed_tokens[1])
              elsif parsed_tokens == "fukin"
                fukin(parsed_tokens[1])
              elsif parsed_tokens == "motif"
                motif(parsed_tokens[1])
              elsif parsed_tokens == "hono"
                hono(parsed_tokens[1])
              elsif parsed_tokens == "ninom"
                ninom(parsed_tokens[1])
              elsif parsed_tokens == "nibuttai"
                nibuttai(parsed_tokens[1])
              elsif parsed_tokens == "netemps"
                netemps(parsed_tokens[1])
              elsif parsed_tokens == "nifukin"
                nifukin(parsed_tokens[1])
              elsif parsed_tokens == "nemotif"
                nemotif(parsed_tokens[1])
              elsif parsed_tokens == "nihono"
                nihono(parsed_tokens[1])

              ###################################################################################################
              #                                         Museum Management                                       #
              ###################################################################################################
              elsif parsed_tokens == "muco"
                musee_comprime(parsed_tokens[1], parsed_tokens[2])
              elsif parsed_tokens == "nomode"
                noremodei(parsed_tokens[1])
        
              ###################################################################################################
              #                                          Reconoitering                                          #
              ###################################################################################################
              elsif parsed_tokens == "jiko"
                jiko(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
              elsif parsed_tokens == "unir"
                unir(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])

              ###################################################################################################
              #                                     Weaponry And Cursed items                                   #
              ###################################################################################################
              elsif parsed_tokens[0] == "kususu"
                kurosumisu(parsed_tokens[1], parsed_tokens[2])
              elsif parsed_tokens[0] == "corasu"
                coperasumisu(parsed_tokens[1], parsed_tokens[2])
              elsif parsed_tokens[0] == "bususu"
                burasusumisu(parsed_tokens[1], parsed_tokens[2])
              elsif parsed_tokens[0] == "vandepu"
                vanedesopu(parsed_tokens[1], parsed_tokens[2])
              elsif parsed_tokens[0] == "erlisu"
                erobalisusopa(parsed_tokens[1], parsed_tokens[2])
              elsif parsed_tokens[0] == "verso"
                iverisopa(parsed_tokens[1], parsed_tokens[2])

              ###################################################################################################
              #                                             Revemoire                                           #
              ###################################################################################################
              else
                current_token = tokens[token_index]
              end
  
              index = index + 1
            end
          end
        end
      end
    end

    def self.scatter_three_ashes
      old_fathers  = File.read_lines("mce/family/father.txt").uniq.sort.shuffle
      old_mothers  = File.read_lines("mce/family/mother.txt").uniq.sort.shuffle
      old_children = File.read_lines("mce/family/child.txt").uniq.sort.shuffle

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

    def self.scatter_four_ashes
      old_fathers  = File.read_lines("mce/family/father.txt").uniq.sort.shuffle
      old_mothers  = File.read_lines("mce/family/mother.txt").uniq.sort.shuffle
      old_brothers = File.read_lines("mce/family/brother.txt").uniq.sort
      old_sister   = File.read_lines("mce/family/sister.txt").uniq.sort

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

    def self.yonagumi(current_year, specific_event)
      age_of_yonagumi = 11000.0
  
      age_percent = age_of_yonagumi - current_year
  
      " For a point of comparison: Yonagumi is #{age_percent} years old as of #{current_year}."

      Obelisk::DataRecycling.obelisk("For a point of comparison: Yonagumi is #{age_percent} years old as of #{current_year}.")
      Obelisk::DataRecycling.scatter_ashes
    end

    def self.age_comparison(current_year, age_historical, specific_event)
      years_ago = current_year - age_historical
  
      print "The current year is #{current_year}, #{specific_event} is #{years_ago} years ago."
      puts Obelisk::DataRecycling.yonagumi(2026.0, "#{specific_event}")
      
      Obelisk::DataRecycling.obelisk("The current year is #{current_year}, #{specific_event} is #{years_ago} years ago.")
    end
  end
end

#######################################################################################
#                                      Awasunu                                        #
#######################################################################################
# This handles basic string generation for the scripting language.                    #
#######################################################################################
def viola
  system("clear")
end

def ast(label, value)
  [ label, value ]
end

def atom(value)
  ast(value, "#{value}")
end

def encrire(input)
  print input
end

def encrireln(input)
  puts input
end

## Name of interactive terminal.
def documentation(title, platform)
  encrireln("#{title} on #{platform}")
end

def sangehommage(prompt)
  print "#{prompt} "; read_line = gets.not_nil!.chomp
end

def parle_merci(prompt, output)
  print "#{prompt} "; puts output
end

def objet(mot_genre, mot_specifique)
  "#{mot_genre} #{mot_specifique}"
end

def subjet(pronoun)
  "#{pronoun}"
end

def verb(action)
  "#{action}."
end

def osv(o, s, v)
  puts "#{o} #{s} #{v}".strip
end

def sov(s, o, v)
  puts "#{s} #{o} #{v}".strip
end

def expression(phrase_one, phrase_two)
  encrire(%Q(["#{phrase_one}", "#{phrase_two}"]\n))
end

def parle_grammaire(v, o, s)
  encrireln("['#{v}', '#{o}','#{s}']")
end

def nihongotupelo(v, o, s)
  puts "['#{v}', '#{o}', '#{s}']"
end

## Grammar
def ne(first_noun, second_noun)
  encrireln("Ne #{first_noun} ou #{second_noun}, ")
end

def mais(third_noun)
  encrireln("mais c'est #{third_noun}. ")
end

def cette(noun, adjective)
  "Cette #{noun} est #{adjective}."
end

def maisette(noun, adjective)
  "Maisette #{noun} est #{adjective}."
end

def sinon(noun, adj1, adj2, adj3)
  "Sinon #{noun} n'est #{adj1} ou #{adj2}, mais c'est #{adj3}."
end

def parle(phrase)
  encrireln(phrase)
end

def bokette(phrase)
  sleep(1.5)
  
  parle(phrase)
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

################################################################################################
#                                Conlang Specific Functionality                                #
################################################################################################
def yumemoire(agent, location)
  "#{agent} has been transported to #{location}."
end

def posedonokitano(agent, enemy)
  "#{agent} utilisent le posedonokitano et coupe le #{enemy}."
end

def sanadforutese(sender, reciever)
  "#{sender} encrivant un lettre pour #{reciever}."
end

## Describes whether something is haunted, and whether it concentrates yokai.
def yokenozen(agent, location)
  "#{agent} est en #{location}, c'est yokenozen."
end

def hauntecabine(location, hante)
  "#{location} est hante par #{hante}."
end

### Dialectical differences ( aka aliases )

# Climb hidden latter into cobblestone basement.
def entrerokku(agent, entrance, basement)
  "#{agent} entreroche dans #{basement}."
end

#### Ninhongo Parlez-Vous
def seibetsu(word_class)
  "#{word_class}"
end

def ejento(agent_name)
  "#{agent_name}"
end

def keiyoshi(adjective)
  "#{adjective}"
end

def shudai(subject)
  "#{subject}"
end

def doshi(action)
  "#{action}"
end

def fukishi(adverb)
  "#{adverb}"
end

def nihongo(arg1, arg2, arg3, arg4, arg5, arg6)
  "#{arg1} #{arg2} #{arg3} #{arg4} #{arg5} #{arg6}"
end

## Japanese Equivalent constraint logic
def nai(fact_one, fact_two)
  encrire("Nai [ #{fact_one} ] anata [ #{fact_two} ], ")
end

def shikasa(fact_three)
  encrire("shikashi #{fact_three}")
end

################################################################################################
#                                Who What When Where Why How                                   #
################################################################################################
#
################################################################################################
def nom(a)
  "Mes nom est #{a}."
end

def buttai(b)
  "C'est un/une #{b}."
end

def temps(c)
  "Le temp est #{c}."
end

def fukin(d)
  "Je suis en le voisinage de #{d}."
end

def motif(e)
  "Mes raison pour ce est #{e}."
end

def hono(f)
  "Mois methode pour le fabrication mes objectifs est #{f}."
end

def jiko(a, b, c)
  "Vous avoir damande moi #{a} a propos #{b} par #{c}."
end

## Unite specific people at a time and place
def unir(a, b, c)
  "Je avoir unif avec #{a} avec #{b} a #{c}."
end

def genkei(a)
  "Je suis un etudiant a propos #{a}."
end

def ninom(a)
  "Mes nom est ne #{a}."
end

def nibuttai(b)
  "C'est non un/une #{b}."
end

def netemps(c)
  "Le temp est ne #{c}."
end

def nifukin(d)
  "Je suis ne en le voisinage de #{d}."
end

def nemotif(e)
  "Mes raison pour ce est ne #{e}."
end

def nihono(f)
  "Mois methode pour le fabrication mes objectifs est ne #{f}."
end

## Disunification
def neunir(a, b, c)
  "Je ne avoir unif avec #{a} avec #{b} a #{c}."
end

def nijiko(a, b, c)
  "Vous ne avoir damande moi #{a} a propos #{b} par #{c}."
end

def nigenkei(a)
  "Je suis ne un etudiant a propos #{a}."
end

def musee_comprime(a)
  "cette musee comprime #{a}."
end

def noremodei(a)
  "Cette #{a} est noermodeios."
end

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
def kurosumisu(cursed_weapon, recipient)
  "#{recipient} avoir un #{cursed_weapon} par anu kurosumisu."
end

# Cursed lamp smith
def coperasumisu(cursed_lamp, recipient)
  "#{recipient} avoir un #{cursed_lamp} par anu coperasumisu."
end

# Cursed knob smith
def burasusumisu(crafted_knob, recipient)
  "#{recipient} avoir un #{crafted_knob} par anu burasusumisu."
end

## Soap From Meat, ala "Ivory Soap"
def vanedesopu(cursed_meat, recipient)
  "#{recipient} avoir un #{cursed_meat} par anu vanedesopu."
end

## Soap from Herbs "Herbal Soap"
def erobalisusopa(cursed_herb, recipient)
  "#{recipient} avoir un #{cursed_herb} par ana erobalisusopa."
end

## Soap from books "Whitewashed books"
def iverisopa(cursed_book, recipient)
  "#{recipient} avoir un #{cursed_book} par ana iverisopa."
end

################################################################################################
#                                        French Actions                                        #
################################################################################################
def mange(a, b)
  "Mange un #{a} en #{b}."
end

def coupe(a, b)
  "Coupe un #{a} en #{b}."
end

def cuicre(a, b)
  "Cuicre un #{a} en #{b}."
end

def baguette(a, b)
  "Baguette un #{a} en #{b}."
end

def guillotine(verb, subject)
  "Guillotine #{verb} #{subject}."
end

def ax_head(verb, subject)
  "Tete Du Crescent #{verb} #{subject}."
end

def roboparle(verb, subject)
  "Le robo #{verb} #{subject}."
end

def parle_a_robo(object, subject, verb, your_name)
  "#{your_name}: #{subject} #{verb} #{object}"
end

################################################################################################
#                                         Dream Logic                                          #
################################################################################################
# These are functions specifically in reference to dream patterns I've had when studying my    #
# my own subconscious. A clever analyst will notice that dream symbols also frequently overlap #
# with folklore symbols. The difference here is that dream symbols are treated as explicit     #
# anomalies in order to assess what the unincorporated shadow is.                              #
################################################################################################
def argue_purpose(a, b, c)
  %Q(#{a} has elements of #{b}, but #{c} is primarily composed of #{b}.)
end

def basement_ghost(a, b, c)
  %Q(#{a} checks on noise in #{b}, and invited to dinner by #{c}. Don't eat #{c}'s food or you'll never leave #{b}.)
end

def bedroom_coffee_maker(a, b)
  %Q(#{a} is a room in the #{b}.)
end

def deer_attack(a, b)
  %Q(Deer #{a} attack specimen #{b} as a unit of multiple deer, before #{b} wakes up.)
end

def explore_bedroom(a)
  %Q(#{a} explores the current bedroom.)
end

def goat_ride_salamander(a, b, c, d)
  %Q(#{a} rides #{b} causing the end of the world, survived by #{c}. #{a} is theorized to eat lifestock, and is unknown whether to target #{d}.)
end

def greenhouse_path(a, b)
  %Q(#{a} is in the greenhouse of #{b}.)
end

def innocent_hour(a)
  %Q(#{a} currently in the hour of innocense, and has tiny horns.)
end

def terror_hour(a)
  %Q(#{a} currently in the hour of terror, and has long horns.)
end

def is_haunted?(a, b, c)
  %Q(#{a} thinks #{c} is haunted, but not #{b}.)
end

def local_reality_zone(a, b, y1, x1, y2, x2)
  %Q(#{a} is a local reality zone of #{b}, with #{a} having a local y of #{y1} and x of #{x1}. But #{b} itself only has a y of #{y2} and an x of #{x2}.)
end

def specify_reality_zone(a, b, c)
  %Q(#{a}, therefore {b} giving it the #{c} classification.)
end

def non_euclid(a, b)
  %Q(You can fit #{a} inside of #{b} because its exact dimensions aren't defined.)
end

def spot_rainbow_elephant(a, b)
  %Q(#{a} is featured in #{b} is a rainbow elephant.)
end

def non_uniform_anomaly(a, b, c, d, e, f)
  %Q(You can fit #{a} inside of #{b} although top floors y is #{c}, and the top floors x is #{d}. The bottom floor is y of #{e} and x of #{f}.)
end

def plant_evidence(a, b, c)
  %Q(#{a} murders student #{c}, telling #{b} they framed them for their murder.)
end

def plant_tree(a, b)
  %Q(Tree #{a} is planted on plot in #{b}.)
end

def poupee_sassoir(a)
  %Q(Je avoir s'assoir en le chaise a #{a}.)
end

def nepoupee_sassoir(a)
  %Q(Je ne avoir s'assoir en le chaise a #{a}.)
end

def ravenauka(a, b)
  %Q(#{a} is chased off to the nevermore of #{b} by a demonic raven.)
end

def sabofensu(a)
  %Q(Moi ne avoir un avis de: #{a})
end

def squirrel_dog_beetle(a)
  %Q(#{a} whom looks like a mix of a squirrel, mangi dog, and beetle.)
end

def talk_to_tree(a, b)
  %Q(#{a} chats with tree #{b} about its day.)
end

def tree_yard(a, b, c)
  %Q(#{a} #{b} #{c})
end

def try_on_shoes(a, b)
  %Q(#{a} tries on shoes #{b}.)
end

def twirl_baton(a, b)
  %Q(#{a} twirls #{b} like a baton.)
end

def wander_halls(a, b, c)
  %Q(#{a} wanders from #{b} to #{c}.)
end

# That impression of #{a} that has wapred into a black expanse.
def ninoremodei(a)
  "Cette #{a} est anos ninoermodeios."
end

# forme de gravité
def graviteformee(a, b)
  "Le #{a} es uni avec #{b}: #{a}#{b}"
end

def negraviteformee(a, b)
  "Le #{a} es ne uni avec #{b}: #{a}#{b}"
end

## Turns off the television
def incongruisho(a, b, c)
  "The #{a} must be taken from #{b} and disposed of at #{c} and forgotten about."
end

def neincongruisho(a, b, c)
  "The impact of #{a} from the pattern of #{b} in the context of #{c}."
end

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

#######################################################################################
#######################################################################################
def recursive_encrire(input, outfname)
  encrireln(input)

  statement = <<-PHRASE
  encrireln #{input}
  PHRASE

  File.open("#{outfname}.awa", "w") { |f|
    f.puts statement
  }

  encrireln(input)
end

def recursive_documentation(title, description, outfname)
  docs = <<-DOCUMENTATION
  docs #{title} #{description}
  DOCUMENTATION

  File.open("#{outfname}.awa", "w") { |f|
    f.puts docs
  }

  documentation(title, description)
end

def recursive_osv(o, s, v, outfname)
  output = <<-OSV
osv #{o} #{s} #{v}
  OSV

  File.open("#{outfname}.awa", "w") { |f|
    f.puts output
  }

  puts sov(s, o ,v)
end

def recursive_sov(s, o, v, outfname)
  output = <<-SOV
sov #{s} #{o} #{v}
  SOV

  File.open("#{outfname}.awa", "w") { |f|
    f.puts output
  }

  puts osv(o, s, v)
end

def recursive_expression(phrase_one, phrase_two, outfname)
  output = <<-EXPRESS
expression #{phrase_one} #{phrase_two}
  EXPRESS

  File.open("#{outfname}.awa", "w") { |f|
    f.puts output
  }

  encrireln(expression(phrase_one, phrase_two))
end

def recursive_contrastif(first_noun, second_noun, third_noun, outfname)
  output = <<-EXPRESS
contrastif #{first_noun} #{second_noun} #{third_noun}
  EXPRESS

  File.open("#{outfname}.awa", "w") { |f|
    f.puts output
  } 

  ## Pre
  ne(first_noun, second_noun)

  mais(third_noun)
end

#######################################################################################
#                                        REPL                                         #
#######################################################################################
def read_file
  file_name = ARGV[0]

  read_file = File.readlines(file_name)

  total_lines = read_file.size.to_i
  index       = 0

  if total_lines > 0
    total_lines.times do
      current_line = read_file[index]

      ## Trims syntactical munk fruit.
      current_line = current_line.tr ")", ""  
      current_line = current_line.tr "(", ""
      current_line = current_line.tr %q("), %q()

      tokens       = current_line.split(/ /)
      total_tokens = tokens.size.to_i
      token_index  = 0
    
      ## The actual tokens you'll be parsing.
      parsed_tokens = []
    
      if total_tokens > 0

        total_tokens.times do
          current_token = tokens[token_index]
 
          parsed_tokens = parsed_tokens.push(current_token)
    
          token_index = token_index + 1
        end
        
        #puts parsed_tokens[1]

        ###################################################################################################
        #                                         Document Parsing                                        #
        ###################################################################################################  
        if    parsed_tokens[0] ==  "#"
        elsif parsed_tokens[0] == "--"
        elsif parsed_tokens[0] ==  ";"
        elsif parsed_tokens[0] ==  ""
        ###################################################################################################
        #                                       Francais Interpreter                                      #
        ###################################################################################################
        elsif parsed_tokens[0] == "viola"
          viola
        elsif parsed_tokens[0] == "encrire"
          new_index  = 0
          size_limit = parsed_tokens.size.to_i
          
          size_limit.times do
            new_output = parsed_tokens[new_index]
            
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
            new_output = parsed_tokens[new_index]
            
            if new_output == "encrireln"
            else
              print "#{new_output} "
            end
            
            new_index = new_index + 1
          end

          puts " "
        elsif parsed_tokens[0] == "docs"
          documentation(parsed_tokens[1], parsed_tokens[2])
        elsif parsed_tokens[0] == "osv"
          osv(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
        elsif parsed_tokens[0] == "sov"
          sov(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
        elsif parsed_tokens[0] == "expression"
          puts expression(parsed_tokens[0], parsed_tokens[1])
        elsif parsed_tokens[0] == "pgram"
          puts parle_grammaire(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
        elsif parsed_tokens[0] == "ntupe"
          puts nihongotupelo(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
        elsif parsed_tokens[0] == "contrastif"
          puts ne(parsed_tokens[1], parsed_tokens[2])

          puts mais(parsed_tokens[3])
        elsif parsed_tokens[0] == "cemase"
          puts cette(parsed_tokens[1], parsed_tokens[2])

          puts maisette(parsed_tokens[3], parsed_tokens[4])

          puts sinon(parsed_tokens[5], parsed_tokens[6], parsed_tokens[7], parsed_tokens[8])
        elsif parsed_tokens[0] == "ouvert"
          ouvert(parsed_tokens[1], parsed_tokens[2],
                 parsed_tokens[3], parsed_tokens[4],
                 parsed_tokens[5], parsed_tokens[6])

        ###################################################################################################
        #                                         Metaprogramming                                         #
        ###################################################################################################
        elsif parsed_tokens[0] == "encrireo"
          recursive_encrire(parsed_tokens[1], parsed_tokens[2])
        elsif parsed_tokens[0] == "mdocs"
          recursive_documentation(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
        elsif parsed_tokens[0] == "mosv"
          recursive_osv(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3], parsed_tokens[4])
        elsif parsed_tokens[0] == "msov"
          recursive_sov(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3], parsed_tokens[4])
        elsif parsed_tokens[0] == "mexp"
          recursive_expression(parsed_tokens[0], parsed_tokens[1], parsed_tokens[2])
        elsif parsed_tokens[0] == "mcon"
          recursive_contrastif(parsed_tokens[0], parsed_tokens[1], parsed_tokens[2])

        ###################################################################################################
        #                                       Nihongo Interpreter                                       #
        ###################################################################################################
        elsif parsed_tokens[0] == "sore"
          puts sore(parsed_tokens[1], parsed_tokens[2])
        elsif parsed_tokens[0] == "shikashu"
          puts shikashu(parsed_tokens[1], parsed_tokens[2])
        elsif parsed_tokens[0] == "matawa"
          puts shikashu(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3], parsed_tokens[4])
        elsif parsed_tokens[0] == "nai"
          puts shikashu(parsed_tokens[1], parsed_tokens[2])
        elsif parsed_tokens[0] == "shikasa"
          puts shikasha(parsed_tokens[1])

        ###################################################################################################
        #                                     Yumemoire Interpreter                                       #
        ###################################################################################################
        elsif parsed_tokens[0] == "yumo"
          yumemoire(parsed_tokens[1], parsed_tokens[2])
        elsif parsed_tokens[0] == "pokita"
          posedonokitano(parsed_tokens[1], parsed_tokens[2])
        elsif parsed_tokens[0] == "safote"
          sanadforutese(parsed_tokens[0], parsed_tokens[1])
        elsif parsed_tokens[0] == "yono"
          yokenozen(parsed_tokens[0], parsed_tokens[1])
        elsif parsed_tokens[0] == "haunt"
          hauntecabine(parsed_tokens[0], parsed_tokens[1])
        elsif parsed_tokens[0] == "entre"
          entrerokku(parsed_tokens[0], parsed_tokens[1], parsed_tokens[2])

        ###################################################################################################
        #                                         Investigatif                                            #
        ###################################################################################################
        elsif parsed_tokens == "nom"
          nom(parsed_tokens[1])
        elsif parsed_tokens == "buttai"
          buttai(parsed_tokens[1])
        elsif parsed_tokens == "temps"
          temps(parsed_tokens[1])
        elsif parsed_tokens == "fukin"
          fukin(parsed_tokens[1])
        elsif parsed_tokens == "motif"
          motif(parsed_tokens[1])
        elsif parsed_tokens == "hono"
          hono(parsed_tokens[1])
        elsif parsed_tokens == "ninom"
          ninom(parsed_tokens[1])
        elsif parsed_tokens == "nibuttai"
          nibuttai(parsed_tokens[1])
        elsif parsed_tokens == "netemps"
          netemps(parsed_tokens[1])
        elsif parsed_tokens == "nifukin"
          nifukin(parsed_tokens[1])
        elsif parsed_tokens == "nemotif"
          nemotif(parsed_tokens[1])
        elsif parsed_tokens == "nihono"
          nihono(parsed_tokens[1])

        ###################################################################################################
        #                                         Museum Management                                       #
        ###################################################################################################
        elsif parsed_tokens == "muco"
          musee_comprime(parsed_tokens[1], parsed_tokens[2])
        elsif parsed_tokens == "nomode"
          noremodei(parsed_tokens[1])
        
        ###################################################################################################
        #                                          Reconoitering                                          #
        ###################################################################################################
        elsif parsed_tokens == "jiko"
          jiko(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])
        elsif parsed_tokens == "unir"
          unir(parsed_tokens[1], parsed_tokens[2], parsed_tokens[3])

        ###################################################################################################
        #                                     Weaponry And Cursed items                                   #
        ###################################################################################################
        elsif parsed_tokens[0] == "kususu"
          kurosumisu(parsed_tokens[1], parsed_tokens[2])
        elsif parsed_tokens[0] == "corasu"
          coperasumisu(parsed_tokens[1], parsed_tokens[2])
        elsif parsed_tokens[0] == "bususu"
          burasusumisu(parsed_tokens[1], parsed_tokens[2])
        elsif parsed_tokens[0] == "vandepu"
          vanedesopu(parsed_tokens[1], parsed_tokens[2])
        elsif parsed_tokens[0] == "erlisu"
          erobalisusopa(parsed_tokens[1], parsed_tokens[2])
        elsif parsed_tokens[0] == "verso"
          iverisopa(parsed_tokens[1], parsed_tokens[2])

        ###################################################################################################
        #                                             Revemoire                                           #
        ###################################################################################################
        else
          current_token = tokens[token_index]
        end
  
        index = index + 1
      end
    end
  else
    current_line = read_file[index]

    print current_line.tr " ", ""
  end
end
