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

macro define_gender(gender_name, word_name, content)
  module {{gender_name}}
    def self.{{word_name}}
	  {{content}}
	end
  end
end

define_method viola, system("clear")

define_method           aruxetos(a, b), %Q(Cette archette #{a} est de #{b}.)
define_method      coresetosunos(a, b), %Q(Cette corsette #{a} est de #{b}.)

define_method jupecabinemotonese(a, b), %Q(Cette jupe de les chiennes #{a} est de #{b}.)
define_method          basumoton(a, b), %Q(Anos basumotonos #{a} est de #{b}.)

define_method    basumotonerudos(a, b), %Q(Anos basumotonerudos #{a} est de #{b}.)
define_method       sfabotarokos(a, b), %Q(Anos sfabotarokos de #{a} est de #{b}.)

define_method    basumotonerudos(a, b), %Q(Anos basumotonerudos #{a} est de #{b}.)
define_method       sfabotarokos(a, b), %Q(Anos sfabotarokos de #{a} est de #{b}.)

define_method    basumotonerudos(a, b), %Q(Anos basumotonerudos #{a} est de #{b}.)
define_method       sfabotarokos(a, b), %Q(Anos sfabotarokos de #{a} est de #{b}.)

define_method    basumotonerudos(a, b), %Q(Anos basumotonerudos #{a} est de #{b}.)
define_method       sfabotarokos(a, b), %Q(Anos sfabotarokos de #{a} est de #{b}.)

define_method   ehonerudos(a, b), %Q(Anos ehonerudos #{a} est de #{b}.)          # Black Hole Expanse
define_method esvasvohudos(a, b), %Q(#{a} tombe en anos esvasvohudos a #{b}.)    # Executioners scaffold
define_method      ojijaku(a, b), %Q(Anos ojijaku #{a} est cette payes de #{b}.) # Oncle Hanzi as a generic label for fairy tales.

define_method     egirafu(a, b), %Q(#{a} est en un anu egirafu en #{b}.)     # A is a giraff in B.
define_method ehepehanutu(a, b), %Q(#{a} est en un anu ehepehanutu en #{b}.) # A is a elephant in B.

define_method nerudospeda(a, b), %Q(#{a} est en un anu nerudospeda de #{b}.) # A is a black footed person in B.
define_method   perachinu(a, b), %Q(#{a} est en un anu perachinu en #{b}.)   # A is a fish in B.
define_method   erudutete(a, b), %Q(#{a} est en un ana erudutete de #{b}.) # A is an red head of B.
define_method       lupos(a, b), %Q(#{a} est en un anos lupos en #{b}.)    # A is a wolf in B.
define_method     sorisos(a, b), %Q(#{a} est en un anos sorisos en #{b}.) # A is an mouse in B.
define_method     poletos(a, b), %Q(#{a} est en un anos poletos en #{b}.) # A is an chicken in B.
