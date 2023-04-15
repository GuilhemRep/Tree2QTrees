all:
	ocamlc -c Abr2Qtree.mli
	ocamlc -c Abr2Qtree.ml
	ocamlc -c exemple.ml
	ocamlc -o exemple Abr2Qtree.cmo exemple.cmo

clean:
	rm -rf exemple *.cmi *.cmo *~
