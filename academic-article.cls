% !TEX TS-program = xelatex
% !TEX encoding = UTF-8

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Academic Article XeLaTex Class
% Lincoln Mullen (lincoln@lincolnmullen.com)
% 
% A XeLaTeX class that extends the article class and adds some formatting options. Inspired by Cambridge University Press style.
% 
% I got a lot of help from these sites:
% 	David J. Perry, Creating Scholarly Multilingual Documents Using Unicode, OpenType, and XeTeX
% 	http://scholarsfonts.net/xetextt.pdf
% 
% (c) Copyright 2011 Lincoln Mullen.
% 
% This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
% 
% This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
% 
% You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% IDENTIFICATION %%%%%%%%%%
% Identify the class name and version
\ProvidesClass{academic-article}[2011/08/14 v0.1 Academic article class for XeLaTeX]

% This class depends on LaTeX --- not sure what this should be
\NeedsTeXFormat{LaTeX2e}


% DECLARATION OF OPTIONS %%%%%%%%%%
% Pass all options to the article class. 
% This class essentially takes the article class and preloads a bunch of options.
\DeclareOption* {\PassOptionsToClass{\CurrentOption}{article}}


% PROCESS OPTIONS %%%%%%%%%%
\ProcessOptions  \relax


% PACKAGE LOADING %%%%%%%%%%
% Load the article class, which is being modified
\LoadClass{article}

% fontspec gives access to unicode fonts and OT fonts
\usepackage{fontspec}

% This package might not be necessary, but it should load fontspec. It provides extra customizations for XeLaTeX.
\usepackage{xltxtra}

\setmainfont[Ligatures=Common,Numbers=OldStyle,Mapping=tex-text]{Adobe Caslon Pro}
\setmonofont[Scale=0.8]{Monaco} 
% \setsansfont[Scale=0.9,Mapping=tex-text]{MyriadPro} 

% ---- CUSTOM AMPERSAND
\newcommand{\amper}{{\fontspec[Scale=.95]{Adobe Caslon Pro}\selectfont\itshape\&}}


% converts LaTeX specials (``quotes'' --- dashes etc.) to unicode
% \defaultfontfeatures{Mapping=tex-text,Scale=MatchLowercase}  

% Substitute for older package babel, sets main language and could set other languages if necessary.
% \usepackage{polyglossia}
% \setdefaultlanguage{english}

% graphix allows embedded graphics
% \usepackage{graphix}

% helps typeset urls. Might not be necessary with hyperref.
\usepackage{url}

% Changes the header style around
% \usepackage{fancyhdr}

% This package lets us change case without the problems inherent in LaTeX's or TeX's own commands. This will be necessary for the small caps titles.
\usepackage[overload]{textcase}

% load the titling package, which we'll let us control the appearance of the title. The actual commands appear below.
% \usepackage{titling}

% allows urls in PDFs, among other things. Hyperref should be loaded close to last.
\usepackage[xetex,bookmarks,colorlinks,breaklinks,pdfauthor={Lincoln Mullen},pdfcreator={XeLaTeX}]{hyperref}
\hypersetup{linkcolor=black,citecolor=black,filecolor=black,urlcolor=black} 

% xunicode substitutes precombined glyphs for combining characters. Needs to be the last package loaded, I think.
\usepackage{xunicode}

% DEFINE OUR OWN TITLE BY RENEWING \@maketite
% This works, except I can't transform the date and author to lowercase, so that the small caps look right. The \MakeLowercase command can be issued without a problem in the document itself, but that's kind of yanky. Perhaps the titling package would work, though I can't figure out how to change the order of title elements around using that package.
% 
\renewcommand{\@maketitle}{%
  \null
  \vskip 2em%
  \begin{center}%
  \let \footnote \thanks
  {\textsc{\@date} \par}%       
	\vskip 1.5em%
    {\Large \@title \par}%
    \vskip 1.5em%
    {\large
     \lineskip .5em%
      \begin{tabular}[t]{c}%
        {\textsc{\@author}}%
      \end{tabular}\par}%
      \vskip 1.5em%
  \end{center}\par
  \vfil%
}
% 
% OTHER CODE %%%%%%%%%%
% Single horizontal space after punctuation
\frenchspacing
% Anything needed at the beginning of the document goes here
% \AtBeginDocument{
% }
% Anything needed at the end of the document goes here
% \AtEndDocument{
% }


% DEFINE ENVIRONEMENTS AND COMMANDS %%%%%%%%%%

% Define an environment for the bibliographic information of a reviewed book.
\newenvironment{reviewedbook}{\begin{quote}}{\end{quote}}

% An command for paragraph-style section, borrowed from tufte-latex
\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \noindent\textsc{#1}%
}