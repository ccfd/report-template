\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{sprawozdanie}

\LoadClass[12pt,twoside]{article}
\RequirePackage{lmodern}
\RequirePackage{amsmath}
\RequirePackage{fixltx2e}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage{graphics}
\RequirePackage{xcolor}
\RequirePackage{tikz}
\RequirePackage{hyperref}
\RequirePackage[margin=2cm]{geometry}
\RequirePackage{fancyhdr}

\DeclareOption{red}{\renewcommand{\headlinecolor}{\color{slcolor}}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\newcommand{\class}[1]{\gdef\@class{#1}}%
\newcommand{\@class}{\@latex@warning@no@line{No \noexpand\class given}}
\newcommand{\indeks}[1]{\gdef\@indeks{#1}}%
\newcommand{\@indeks}{\@latex@warning@no@line{No \noexpand\indeks given}}


\renewcommand{\maketitle}{%
\begin{center}
\begin{tabular}{rl}
Przedmiot: & \@class\\
Tytuł: & \@title\\
Autor: & \@author\\
Nr indeksu: & \@indeks
\end{tabular}
 \end{center}
}


\renewcommand{\maketitle}{%
\begin{titlepage}
\begin{center}
\def\tkzscl{0.2}\definecolor{ZnakColor}{cmyk}{1,0,0,1}
\input{znak.tex}\\\vfill
{\fontsize{22}{50}\fontseries{bx}\selectfont\@class}\\[10pt]
{\fontsize{30}{40}\selectfont\sc\@title}\\[10pt]\vfill
{\fontsize{14}{50}\fontseries{b}\selectfont\@author\fontseries{n}\selectfont\ (nr indeksu: \@indeks)}
\end{center}
\end{titlepage}
}

\fancyhf{}
%\fancyhead[RE]{\nouppercase{\scshape \leftmark}}
%\fancyhead[LO]{\nouppercase{\scshape \rightmark}}
\fancyhead[L]{\@class}
\fancyhead[R]{\@author}
\fancyfoot[LO,RE]{\thepage}
\fancyhead[R]{\@author}
\pagestyle{fancy}