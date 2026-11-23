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

## Intial word order
recursive_method recursive_vos(verb, objet, subjet), print("#{verb} #{objet} #{subjet}, "), File.open("vos_output.awa", "w") { |f| f.puts "encrireln #{verb} #{objet} #{subjet}" }

recursive_method recursive_sov(subjet, objet, verb), print("#{subjet} #{objet} #{verb}, "), File.open("#{s}.awa", "w") { |f| f.puts "encrireln #{subjet} #{objet} #{verb}" }

## Secondary word order
recursive_method recursive_osv(objet, subjet, verb), puts("#{objet} #{subjet} #{verb}.\n"), File.open("object_output.awa", "w") { |f| f.puts "encrireln #{objet} #{subjet} #{verb}" }

recursive_method recursive_ovs(objet, verb, subjet), puts("#{objet} #{verb} #{subjet}.\n"), File.open("object_output.awa", "w") { |f| f.puts "encrireln #{objet} #{verb} #{subjet}" }

recursive_method encriref(input, outfname), encrire(input), File.open("#{outfname}.awa", "w") { |f| f.puts "encrireln #{input}"}
obelisk_method   encrireo(input, outfname), input, obelisk("./awasunu #{outfname}")

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
