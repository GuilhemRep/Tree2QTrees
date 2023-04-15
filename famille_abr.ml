(*Générer les ABR3, sur 12 colones*)

let () =
  let n = 4 in
  let colonne = 8 in
  let l = ref (Abr2Qtree.permutations n) in
  let compteur = ref 0 in
  while !l <> [] do
    match (!l) with
      []->failwith "ERREUR"
      |t::q->
        (
          print_string ("\\begin{scope}[shift={(");
          print_int (4*((!compteur) mod colonne));
          print_string (",");
          print_int (-6*((!compteur)/colonne));
          print_string(")}]");

          Abr2Qtree.affiche_qtree (Abr2Qtree.ajout_racine_liste Vide t) (print_int);
          print_string ("\\end{scope}");
          print_newline();
          l:=q;

          incr compteur;
        )
  done
