let () =
  let a = ref (Abr2Qtree.init ()) in
  a := (Abr2Qtree.ajout_racine (!a) 4);
  a := (Abr2Qtree.ajout_racine (!a) 3);
  a := (Abr2Qtree.ajout_racine (!a) 7);
  a := (Abr2Qtree.ajout_racine (!a) 0);
  a := (Abr2Qtree.ajout_racine (!a) 11);
  Abr2Qtree.affiche_qtree (!a) print_int
