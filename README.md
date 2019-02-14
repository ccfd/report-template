CCFD Report Template
====================

# Polski

W tym repozytorium zamieszczony jest format sprawozdania wraz z przykładowym sprawozdaniem.

Przykładowy raport z info2 w formacie:

- [rmarkdown (oryginał)](https://github.com/ccfd/report-template/archive/master.zip)
- [PDF](https://github.com/ccfd/report-template/blob/auto/pdf/info2.pdf?raw=true)
- [LaTeX](https://github.com/ccfd/report-template/archive/auto/latex.zip)
- [HTML](https://github.com/ccfd/report-template/archive/auto/html.zip)
- [Word/OpenOffice](https://github.com/ccfd/report-template/blob/auto/word/info2.docx?raw=true)

## Format sprawozdania dla LaTeX

Format sprawozdania jest zdefiniowany w pliku `sprawozdanie.cls` jest to proste rozszerzenie podstawowego formatu `article` z odpowiednią stroną tytułową.

Piszcząc raport w LaTeX wystarczy w preabule wpisać:
```latex
\documentclass[12pt]{sprawozdanie}

\title{Tytuł}
\author{Autor nr indeksu}
\class{Nazwa przedmiotu}
\deadline{Termin oddania}
\instruktor{Prowadzący}
```

## R-Markdown

W repozytorium zamieszczony jest przykładowy raport z Info2 w formacie `rmarkdown`.
Format ten pozwala na automatyczną generację wykresów i umieszczanie ich w tekście, a także na generowanie wynikowego raportu w różnych formatach (pdf/html/word).
