CCFD Report Template
====================

# Polski

W tym repozytorium jest zamieszczony format sprawozdania wraz z przykładowym sprawozdaniem.

Przykładowy raport z info2 w formacie:

- (rmarkdown (oryginał))https://github.com/ccfd/report-template/archive/master.zip]
- (LaTeX)[https://github.com/ccfd/report-template/archive/auto/latex.zip]
- (HTML)[https://github.com/ccfd/report-template/archive/auto/html.zip]
- (Word/OpenOffice)[[https://github.com/ccfd/report-template/archive/auto/word.zip]

## Format sprawozdania dla LaTeX

Format sprawozdania jest zdefiniowany w pliku `sprawozdanie.cls` jest to proste rozszerzenie podstawowego formatu `article` z odpowiednią stroną tytułową.

Piszcząc raport w LaTeX wystarczy w preabule wpisać:
```latex
\documentclass[12pt]{sprawozdanie}

\title{Tytuł}
\author{Autor (nr indeksu}
\class{Nazwa przedmiotu}
```

## R-Markdown

W repozytorium zamieszczony jest przykładowy raport z Info2 w formacie `rmarkdown`. Format ten pozwala na automatyczną generacje wykresów i umiesczanie ich w tekście, a także na generowanie wynikowego raportu w różnych formatach (pdf/html/word).
