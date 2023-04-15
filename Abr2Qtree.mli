    type 'a abr = Vide | Arbre of ('a * 'a abr * 'a abr)

    (** Toutes les fonctions conservent la structure d'ABR, et [arbre] est toujours un ABR.
    Elles ne modifient pas l'arbre mais renvoient un nouvel arbre modifié !    *)

    val init : unit -> 'a abr

    (** [ajout_racine arbre x] ajoute [x] à la racine d'[arbre] *)
    val ajout_racine : 'a abr -> 'a -> 'a abr

    (** [ajout arbre x] ajoute [x] aux feuilles d'[arbre]*)
    val ajout_feuille : 'a abr -> 'a -> 'a abr

    (**  [ajout_racine_liste arbre l] ajoute tous les élements de [l] à la racine d'[arbre] *)
    val ajout_racine_liste : 'a abr -> 'a list -> 'a abr

    (**  [ajout_feuille_liste arbre l] ajoute tous les élements de [l] aux feuilles d'[arbre] *)
    val ajout_feuille_liste : 'a abr -> 'a list -> 'a abr

    (** [affiche_qtree arbre print] affiche [arbre] au format tikz-qtree pour une utilisation LaTeX, 
    à l'aide de la fonction d'affichage [print]. *)
    val affiche_qtree : 'a abr -> ('a -> unit) -> unit

    (** [permutations n] génère une liste de listes représentant le groupe symétrique à [n] éléments *)
    val permutations : int -> int list list
