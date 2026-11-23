echo "Predicted Grammar Patterns"

./auto_parser_generic 7 "cr" :awasunu1_a '
define_method      yumemoire(agent, location), "#{agent} has been transported to #{location}."
define_method    posedonokitano(agent, enemy), "#{agent} utilisent le posedonokitano et coupe le #{enemy}."
define_method sanadforutese(sender, reciever), "#{sender} encrivant un lettre pour #{reciever}."
' :awasunu2 '
define_method nerudospeda(a, b), %Q(#{a} est en un anu nerudospeda de #{b}.) # A is a black footed person in B.
define_method   perachinu(a, b), %Q(#{a} est en un anu perachinu en #{b}.)   # A is a fish in B.
define_method   erudutete(a, b), %Q(#{a} est en un ana erudutete de #{b}.) # A is an red head of B.
define_method       lupos(a, b), %Q(#{a} est en un anos lupos en #{b}.)    # A is a wolf in B.
define_method     sorisos(a, b), %Q(#{a} est en un anos sorisos en #{b}.) # A is an mouse in B.
define_method     poletos(a, b), %Q(#{a} est en un anos poletos en #{b}.) # A is an chicken in B.' :awasunu1_b '
define_method     motonos(a, b), %Q(#{a} est en un anos motonos en #{b}.) # A is a sheep in B.'