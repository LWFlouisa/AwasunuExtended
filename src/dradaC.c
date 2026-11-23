#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void matrice(char a[], char b[], char c[]) {
  char *matrix[3][3][3] = {
    {{a, a, a},
     {a, a, b},
     {a, a, c}},

    {{b, b, a},
     {b, b, b},
     {b, b, c}},

    {{c, c, a},
     {c, c, b},
     {c, c, c}},
  };

  srand((unsigned)time(NULL));

  int row_options = 3; //{0, 1, 2};
  int col_options = 3; //{0, 1, 2};
  int arr_options = 3; //{0, 1, 2};

  int cr = rand() % row_options;
  int cc = rand() % col_options;
  int ca = rand() % arr_options;

  printf("%s ", matrix[cr][cc][ca]);
}

void confiance(float a, float b, float c) {
  srand((unsigned)time(NULL));

  float probabilities[] = {a, b, c};
  int random_choice   = rand() % 3;

  float new_probability = probabilities[random_choice];
  float new_modifier    = probabilities[random_choice];

  float final_assessment = new_probability * new_modifier;

  printf("%f\n", final_assessment);
}

/* ######################################################################################### */
/* #                                     Introductions                                     # */
/* ######################################################################################### */
void nom(char nom[]) {
  printf("Mes nom est %s.\n", nom);
}

void qui(char buttai[]) {
  printf("C'est un/une %s.\n", buttai);
}

void temps(char c[]) {
  printf("Le temp est %s.\n", c);
}

void fukin(char d[]) {
  printf("Je suis en le voisinage de %s.\n", d);
}

void motif(char e[]) {
  printf("Mes raison pour ce est %s.\n", e);
}

void hono(char f[]) {
  printf("Mois methode pour le fabrication mes objectifs est %s.\n", f);
}

void jiko(char a[], char b[], char c[]) {
  printf("Vous avoir damande moi %s a propos %s par %s.\n", a, b, c);
}

void ninom(char a[]) {
  printf("Mes nom est ne %s.\n", a);
}

void nibuttai(char b[]) {
  printf("C'est non un/une %s.\n", b);
}

void netemps(char c[]) {
  printf("Le temp est ne %s.\n", c);
}

void nifukin(char d[]) {
  printf("Je suis ne en le voisinage de %s.\n", d);
}

void nemotif(char e[]) {
  printf("Mes raison pour ce est ne %s.\n", e);
}

void nihono(char f[]) {
  printf("Mois methode pour le fabrication mes objectifs est ne %s.\n", f);
}

// ## Unite specific people at a time and place
void unir(char a[], char b[], char c[]) {
  printf("Je avoir unif avec %s avec %s a %s.\n", a, b, c);
}

void genkei(char a[]) {
  printf("Je suis un etudiant a propos %s.\n", a);
}

void musee_comprime(char a[]) {
  printf("cette musee comprime %s.\n", a);
}

// That is a black expanse.
void noremodei(char a[]) {
  printf("Cette %s est noermodeios.\n", a);
}

//## Disunification
void neunir(char a[], char b[], char c[]) {
  printf("Je ne avoir unif avec %s avec %s a %s.\n", a, b, c);
}

void nijiko(char a[], char b[], char c[]) {
  printf("Vous ne avoir damande moi %s a propos %s par %s.\n", a, b, c);
}

void nigenkei(char a[]) {
  printf("Je suis ne un etudiant a propos %s.\n", a);
}

/* ######################################################################################### */
/* #                                        Basic DSL                                      # */
/* ######################################################################################### */
void encrire(char input[]) {
  printf("%s", input);
}

void encrireln(char input[]) {
  printf("%s\n", input);
}

void pgram(char v[], char o[], char s[]) {
  printf("['%s', '%s', '%s']\n", v, o, s);
}

void ntupe(char v[], char o[], char s[]) {
  printf("['%s', '%s', '%s']\n", v, o, s);
}

void express(char phrase_one[], char phrase_two[]) {
  printf("%s%s", phrase_one, phrase_two);
}

/* ######################################################################################### */
/* #                                       Word Order                                      # */
/* ######################################################################################### */
void osv(char o[], char s[], char v[]) {
  printf("%s %s %s, ", o, s, v);
}

void sov(char s[], char o[], char v[]) {
  printf("%s %s %s.\n", s, o, v);
}

void vos(char v[], char o[], char s[]) {
  printf("%s %s %s.\n", v, o, s);
}

/* ######################################################################################### */
/* #                               French Contrastive Logic                                # */
/* ######################################################################################### */
void cette(char noun[], char adjective[]) {
  printf("Cette %s c'est %s.\n", noun, adjective);
} 

void maisette(char noun[], char adjective[]) {
  printf("Mais cette %s c'est %s.\n", noun, adjective);
} 

void sinon(char noun[], char adj_une[], char adj_deux[], char adj_trois[]) {
  printf("Sinon n'est %s ne %s ou %s, mais c'est %s.\n", noun, adj_une, adj_deux, adj_trois);
}

void necette(char noun[], char adjective[]) {
  printf("Cette %s n'est %s.\n", noun, adjective);
} 

void nemaisette(char noun[], char adjective[]) {
  printf("Mais cette %s n'est %s.\n", noun, adjective);
} 

void nesinon(char noun[], char adj_une[], char adj_deux[], char adj_trois[]) {
  printf("Sinon c'est %s ne %s ou %s, mais n'est %s.\n", noun, adj_une, adj_deux, adj_trois);
} 

/* ######################################################################################### */
/* #                           Negative Constraint Satisfaction                            # */
/* ######################################################################################### */
void ne(char first_noun[], char second_noun[]) {
  printf("Ne %s our %s, ", first_noun, second_noun);
}

void mais(char third_noun[]) {
  printf("%s.\n", third_noun);
}

void nai(char first_noun[], char second_noun[]) {
  printf("Ne %s our %s, ", first_noun, second_noun);
}

void shikashi(char third_noun[]) {
  printf("%s.\n", third_noun);
}

/* ################################################################################################ */
/* #                                Conlang Specific Functionality                                # */
/* ################################################################################################ */
void yumemoire(char agent[], char location[]) {
  printf("%s has been transported to %s.\n", agent, location);
}

void posedonokitano(char agent[], char enemy[]) {
  printf("%s utilisent le posedonokitano et coupe le %s.\n", agent, enemy);
}

void sanadforutese(char sender[], char reciever[]) {
  printf("%s encrivant un lettre pour %s.\n", sender, reciever);
}

void yokenozen(char agent[], char location[]) {
  printf("%s est en %s.\n", agent, location);
}

void hauntecabine(char location[], char hante[]) {
  printf("%s est hante par %s.\n", location, hante);
}

// ################################################################################################
// #                                  Weaponry And Cursed Items                                   #
// ################################################################################################
// # This defines the DSL for giving recipients cursed items, such as when they reach specific    #
// # locations in the Roguelike.                                                                  #
// #                                                                                              #
// # Traditionally weapon, lamp, and knob smith were considered unclean professions, usually done #
// # as a public service when released from colonial prisons. Lamps in particular were the least  #
// # clean do them being crafted large enough to function as solitary confinement. This meant     #
// # that being able to control the power of a lamp carried connations that don't typically exist #
// # in either Japanese or French culture.                                                        #
// #                                                                                              #
// # Do to the types of animals picked for making soap, more generally the connation of being     #
// # washed with that rather than herbal soap, meant the term soap itself being a perjorative for #
// # those obsessed more by appearances than being authentic. That's not to say people didn't     #
// # clean, but that some soaps were seen as marked with blood.                                   #
// ################################################################################################
// Cursed weapon smith
void kurosumisu(char cursed_weapon[], char recipient[]) {
  printf("%s avoir un %s par anu kurosumisu.\n", recipient, cursed_weapon);
}

// Cursed lamp smith
void coperasumisu(char cursed_lamp[], char recipient[]) {
  print("%s avoir un %s par anu coperasumisu.\n", recipient, cursed_lamp);
}

// Cursed knob smith
void burasusumisu(char crafted_knob[], char recipient[]) {
  printf("%s avoir un %s par anu burasusumisu.\n", recipient, crafted_knob);
}

// Soap From Meat, ala "Ivory Soap"
void vanedesopu(char cursed_meat, char recipient[]) { 
  printf("%s avoir un %s par anu vanedesopu.\n", recipient, cursed_meat);
}

// Soap from Herbs "Herbal Soap"
void erobalisusopa(char cursed_herb[], char recipient[]) {
  printf("%s avoir un %s par ana erobalisusopa.\n", recipient, cursed_herb);
}

// Soap from books "Whitewashed books"
void iverisopa(char cursed_book[], char recipient[]) {
  printf("%s avoir un %s par ana iverisopa.");
}

// ################################################################################################
// #                                        French Actions                                        #
// ################################################################################################
void mange(char a[], char b[]) {
  printf("Mange un %s en %s.\n", a, b);
}

void coupe(char a[], char b[]) {
  printf("Coupe un %s en %s.\n", a, b);
}

void cuicre(char a[], char b[]) {
  printf("Cuicre un %s en %s.\n", a, b);
}

void baguette(char a[], char b[]) {
  printf("Baguette un %s en %s.\n", a, b);
}

void guillotine(char verb[], char subject[]) {
  printf("Guillotine %s un %s.\n", verb, subject);
}

void ax_head(char verb[], char subject[]) {
  printf("Tete Du Crescent %s un %s.\n", verb, subject);
}

void roboparle(char verb[], char subject[]) {
  printf("Le robo %s un %s.\n", verb, subject);
}

// ################################################################################################
// #                                         Dream Logic                                          #
// ################################################################################################
// # These are functions specifically in reference to dream patterns I've had when studying my    #
// # my own subconscious. A clever analyst will notice that dream symbols also frequently overlap #
// # with folklore symbols. The difference here is that dream symbols are treated as explicit     #
// # anomalies in order to assess what the unincorporated shadow is.                              #
// ################################################################################################
void parle_a_robo(char object[], char subject[], char verb[], char your_name[]) {
  printf("%s: %s %s %s.\n", your_name, subject, verb, object);
}

void argue_purpose(char a[], char b[], char c[], char d[]) {
  printf("%s has elements of %s, but %s is primarily composed of %s.\n", a, b, c, d);
}

void basement_ghost(char a[], char b[], char c[], char d[], char e[]) {
  printf("%s checks on noise in %s, and invited to dinner by %s. Don't eat %s's food or you'll never leave %s.\n", a, b, c, d, e)
}

void bedroom_coffee_maker(char a, char b) {
  printf("%s is a room in the %s.\n", a, b);
}

void deer_attack(char a[], char b[], char c[]) {
  printf("Deer %s attack specimen %s as a unit of multiple deer, before %s wakes up.\n", a, b, c);
}

void explore_bedroom(char a[]) {
  ("%s explores the current bedroom.\n", a);
}

void goat_ride_salamander(char a[], char b[], char c[], char d[]) {
  printf("%s rides %s causing the end of the world, survived by %s. %s is theorized to eat lifestock, and is unknown whether to target %s.\n");
}

void greenhouse_path(char a[], char b[]) {
  printf("%s is in the greenhouse of %s.", a, b);
}

void innocent_hour(char a[]) {
  printf("%s currently in the hour of innocense, and has tiny horns.", a);
}

void terror_hour(char a[]) {
  printf("%s currently in the hour of terror, and has long horns.", a);
}

void is_haunted?(char a[], char b[], char c[]) {
  printf("%s thinks %s is haunted, but not %s.", a, b, c);
}

// local_reality_zone
// Local Reality Zone can be thought of as an isolated pocket zone that behaves with different rules from surrounding areas.
//void lrz_labels(char a[], char b[], char c[]) {
//  printf("#{a} is a local reality zone of #{b}, with #{c} ");
//}

//void lrz_coords(int y1, int x1, int y2, int x2) {
//  printf("having a local y of %f and x of %f. But [ location b ] itself only has a y of %f and an x of %f.", y1, x1, y2, x2);
//}

void specify_reality_zone(char p[], char q[], char c[]) {
  printf("%s is the reality zone, therefore %s giving it the %s classification.", p, q, c);
}

void non_euclid(char a[], char b[]) { 
  printf("You can fit %s inside of %s because its exact dimensions aren't defined.", a, b);
}

void spot_rainbow_elephant(char a[], char b[]) {
  printf("%s is featured in %s is a rainbow elephant.", a, b);
}

void non_uniform_anomaly(char a[], char b[], char c[], char d[], char e[], char f[]) {
  printf("You can fit %s inside of %s although top floors y is %s, and the top floors x is %s. The bottom floor is y of %s and x of %s.", a, b, c, d, e, f);
}

// Tree Plantation as a crime scene.
void plant_evidence(char a[], char b[], char c[]) {
  printf("%s murders student %s, telling %s they framed them for their murder.", a, b, c);
}

void plant_tree(char a[], char b[]) {
  printf("Tree %s is planted on plot in %s.", a, b);
}

// Instruct the doll to sit. Despite the name, isn't a doll sitting on a comode.
void define_method poupee_sassoir(char a[]) {
  printf("Je avoir s'assoir en le chaise a %s.", a);
}

void define_method nepoupee_sassoir(char a[]) {
  printf("Je ne avoir s'assoir en le chaise a %s.", a);
}

//define_method   ravenauka(a, b), %Q(#{a} is chased off to the nevermore of #{b} by a demonic raven.)
//define_method      sabofensu(a), %Q(Moi ne avoir un avis de: #{a})

//define_method squirrel_dog_beetle(a), %Q(#{a} whom looks like a mix of a squirrel, mangi dog, and beetle.)
//define_method talk_to_tree(a, b),     %Q(#{a} chats with tree #{b} about its day.)
//define_method tree_yard(a, b, c),     %Q(#{a} #{b} #{c})

//define_method    try_on_shoes(a, b), %Q(#{a} tries on shoes #{b}.)
//define_method     twirl_baton(a, b), %Q(#{a} twirls #{b} like a baton.)
//define_method wander_halls(a, b, c), %Q(#{a} wanders from #{b} to #{c}.)

// That impression of #{a} that has wapred into a black expanse.
//define_method ninoremodei(a), "Cette #{a} est anos ninoermodeios."

// forme de gravité
//define_method   graviteformee(a, b), "Le #{a} es uni avec #{b}: #{a}#{b}"
//define_method negraviteformee(a, b), "Le #{a} es ne uni avec #{b}: #{a}#{b}"

// Turns off the television
//define_method incongruisho(a, b, c),   "The #{a} must be taken from #{b} and disposed of at #{c} and forgotten about."
//define_method neincongruisho(a, b, c),           "The impact of #{a} from the pattern of #{b} in the context of #{c}."

/* ######################################################################################### */
/* #                            Machine Learning Functionality                             # */
/* ######################################################################################### */
void hlim(char title[], char symbolique_une[], char numot_une[], char symbolique_deux[], char numot_deux[], char symbolique_trois[], char numot_trois[]) {
  printf("(encrireln %s)\n", title);
  printf("(hlim 2 %s %s %s %s %s %s)\n", symbolique_une, numot_une, symbolique_deux, numot_deux, symbolique_trois, numot_trois);
  printf("(espace)\n");
}

/* ######################################################################################### */
/* #                                     Find Predessors                                   # */
/* ######################################################################################### */
/* # Adaptation of Find Predessors in NeoPathfinding now called trouve_de_predecateur      # */
/* ######################################################################################### */
void troupre(char ident_one[], char ident_two[], char ident_tre[], char document_one[], char document_two[], char document_tre[], char mort_designe_one[], char mort_designe_two, mort_designe_tre[]) {
  printf("(encrireln POSSIBLE IDENTITY)");
  printf("(hlim 2 :identity_one %s :identiy_two %s :identity_tre %S)\n", ident_one, ident_two, ident_tre);

  printf("(encrireln POSSIBLE DOCUMENTED PRESENCE)");
  printf("(hlim 2 :document_one %s :document_two %s :document_tre %S)\n", document_one, document_two, document_tre);

  printf("(encrireln MORT DESIGNE)");
  printf("(hlim 2 :mort_designe_one %s :mort_designe_two %s :mort_designe_tre %S)\n", document_one, document_two, document_tre);
}

void troutech(char ident_one[], char ident_two[], char ident_tre[], char document_one[], char document_two[], char document_tre[], char mort_designe_one[], char mort_designe_two, mort_designe_tre[]) {
  printf("(encrireln Known Identity)");
  printf("(hlim 2 %s %s %s %s %s %s)", ident_one, ident_two, ident_tre);

  print("(encrireln Last Lineage)");
  printf("(hlim 2 %s %s %s %s %s %s)", document_one, document_two, document_tre);

  printf("(encrireln Predessor Technology)")
  printf("(hlim 2 %s %s %s %s %s %s)", tech_one, tech_two, tech_tre);
}
