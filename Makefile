all:
	latexmk tex/slides.tex

clean:
	latexmk -C tex/slides.tex
	rm -f slides.bbl tex/__latexindent_temp.tex tex/*.aux tex/*.fdb_latexmk tex/*.fls tex/*.log
