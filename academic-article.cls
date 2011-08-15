%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Academic Article XeLaTex Class
% Lincoln Mullen (lincoln@lincolnmullen.com)
% 
% A XeLaTeX class that extends the article class and adds some formatting options. Inspired by Cambridge University Press style.
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
% Pass all options to the article class
\DeclareOption* {\PassOptionsToClass{\CurrentOption}{article}}


% PROCESS OPTIONS %%%%%%%%%%
\ProcessOptions  \relax


% PACKAGE LOADING %%%%%%%%%%
% Load the article class, which is being modified
\LoadClass{article}
% Make the font Palatino
\usepackage{mathpazo}
\usepackage[xetex, bookmarks, colorlinks, breaklinks, pdftitle={Lincoln Mullen - CV},pdfauthor={Lincoln Mullen}]{hyperref}  
\hypersetup{linkcolor=black,citecolor=black,filecolor=black,urlcolor=black} 

% OTHER CODE %%%%%%%%%%
% Single horizontal space after punctuation
\frenchspacing
% Anything needed at the beginning of the document goes here
\AtBeginDocument{
}
% Anything needed at the end of the document goes here
\AtEndDocument{
}
% DEFINE ENVIRONEMENTS AND COMMANDS %%%%%%%%%%
% Define an environment for the bibliographic information of a reviewed book.
\newenvironment{reviewedbook}{\begin{quote}}{\end{quote}}
% An command for paragraph-style section, borrowed from tufte-latex
\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \noindent\textsc{#1}%
}