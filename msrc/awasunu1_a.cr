
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

define_method      yumemoire(agent, location), "#{agent} has been transported to #{location}."
define_method    posedonokitano(agent, enemy), "#{agent} utilisent le posedonokitano et coupe le #{enemy}."
define_method sanadforutese(sender, reciever), "#{sender} encrivant un lettre pour #{reciever}."
