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