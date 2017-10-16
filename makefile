
all : info2.pdf info2.docx info2.html


%.pdf %.tex : %.Rmd
	R -e "rmarkdown::render('$<','pdf_document')"

%.docx : %.Rmd
	R -e "rmarkdown::render('$<','word_document')"

%.html : %.Rmd
	R -e "rmarkdown::render('$<','html_document')"
