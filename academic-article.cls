% !TEX TS-program = xelatex
% !TEX encoding = UTF-8

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Academic Article XeLaTex Class 
% Lincoln Mullen
% lincoln@lincolnmullen.com
% http://lincolnmullen.com
% 
% A XeLaTeX class that extends the article class and adds some
% formatting options. Inspired by Cambridge University Press style.
% 
% I got a lot of help from these sites: David J. Perry, Creating
% Scholarly Multilingual Documents Using Unicode, OpenType, and XeTeX
% http://scholarsfonts.net/xetextt.pdf As well as the documentation for
% the various packages used below. 
% 
% (c) Copyright 2011 Lincoln Mullen.
% 
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or (at
% your option) any later version.
% 
% This program is distributed in the hope that it will be useful, but
% WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
% General Public License for more details.
% 
% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% IDENTIFICATION %%%%%%%%%%

% Identify the class name and version
\ProvidesClass{academic-article}[2012/03/21 v0.2.1 Academic article class for XeLaTeX]

% This class depends on LaTeX2e
\NeedsTeXFormat{LaTeX2e}


% DECLARE OPTIONS %%%%%%%%%%

% packages needed to make xelatex work properly
\usepackage{fontspec, xltxtra, xunicode}

% this package needs to be configured
\usepackage{microtype}

%set a default font, in case no option is passed
\setmainfont[Ligatures=Common,			% use only common ligatures
			 Numbers=OldStyle,			% use old style numbers for class
			 Mapping=tex-text			% map common latex macros
			]{Adobe Caslon Pro}

% Choose Adobe Caslon Pro as the font. This font, plus ligatures and old
% style figures, gives the closest approximation to the Cambridge
% University Press style.
\DeclareOption{caslon}{ 
	\setmainfont[Ligatures=Common,		% use only common ligatures
				 Numbers=OldStyle,		% use old style numbers for class
				 Mapping=tex-text		% map common latex macros
				]{Adobe Caslon Pro}
			}

% Choose Minion Pro as the font. This font is a bit plainer than Caslon,
% which makes the typeset document more understated.
\DeclareOption{minion}{
	\setmainfont[Ligatures=Common,		% use only common ligatures
				 Numbers=OldStyle,		% use old style numbers for class
				 Mapping=tex-text		% map common latex macros
				]{Minion Pro}
			}

% Pass all other options to the article class
\DeclareOption* {\PassOptionsToClass{\CurrentOption}{article}}

% Process options and we're done with this section
\ProcessOptions  \relax

% Set a monospace font for code, in case it's needed
\setmonofont[Scale=0.8]{Monaco} 


% LOAD PACKAGES %%%%%%%%%%

% Only packages which are absolutely necessary for the package to work
% with XeLaTeX % are called in this class itself. Other options that I
% prefer to use % are declared in the document itself, so that the
% document can % be used with other document classes (including plain
% LaTeX classes without needing to change anything besides the
% \documentclass declaration.

% Load the article class, which is being modified
\LoadClass{article}

% packages needed to make xelatex work properly
%\usepackage{fontspec, xltxtra, xunicode}

% A better way to change case. Needed for the small caps titles.
\usepackage[overload]{textcase}


% DECLARE OR RENEW COMMANDS %%%%%%%%%%

% Custom ampersand
\newcommand{\amper}{{\fontspec[Scale=.95]{Adobe Caslon Pro}\selectfont\itshape\&}}

% Environment for the bibliographic information of a reviewed book
\newenvironment{reviewedbook}{\begin{quote}}{\end{quote}}

% Command for paragraph-style section, borrowed from tufte-latex
\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \noindent\textsc{#1}%
}

% Define our own title. This works, except I can't transform the date
% and author to lowercase, so that the small caps look right. The
% \MakeLowercase command can be issued without a problem in the document
% itself, but that's kind of yanky. Perhaps the titling package would
% work, though I can't figure out how to change the order of title
% elements around using that package.  
\renewcommand{\@maketitle}{%
  \null
  \vskip 3em%
  \begin{center}%
  \let \footnote \thanks
  {\normalsize \textsc{\@date} \par}%       
	\vskip 1.0em%
    {\Large \@title \par}%
    \vskip 1.0em%
    {%
     % \lineskip .5em%
      \begin{tabular}[t]{c}%
        {\normalsize \textsc{\@author}}%
      \end{tabular}\par}%
      \vskip 3em%
  \end{center}\par
  %\vfil%
}

% Redefine section and subsection commands to look like Cambridge
% University Press style A heads and B heads 

% Don't number section headings, even if they don't have an *
\setcounter{secnumdepth}{0}

% Borrow code from standard LaTeX article. Make A heads centered, sized
% the same as regular type, and italic
\renewcommand\section{\@startsection {section}{1}{\z@}%
                                   {-3.5ex \@plus -1ex \@minus -.2ex}%
                                   {2.3ex \@plus.2ex}%
                                   {\centering\normalfont\normalsize\itshape}}

% Borrow code from standard LaTeX article. Make B heads left-aligned,
% sized the same as regular type, and italic
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\normalsize\itshape}}

% OTHER CODE %%%%%%%%%%

% Anything needed at the beginning of the document goes here
\AtBeginDocument{}

% Anything needed at the end of the document goes here
\AtEndDocument{}
