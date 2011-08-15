# Academic Article XeLaTeX Class #

A [XeLaTeX](http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=xetex) class that extends the article class. This class uses better fonts, redefines the `\maketitle` command to format the title, loads some packages for general use. The typography is inspired by the Cambridge University Press style for books.

## Author ##

Lincoln Mullen  
<lincoln@lincolnmullen.com>  
<http://lincolnmullen.com/>  
Twitter: [@lincolnmullen](http://twitter.com/lincolnmullen)

## Caveat ##

**Warning**: This is a very early version of this class. Some of what it does is pretty kludgy. In particular, the class is not good about checking if you have the required packages or fonts. This class has only be tested on my personal machine, running Mac OS X 10.7, with some Adobe Pro fonts installed. And some of the options are hardcoded in to my personal information, such as name. Before using the package you should look through the code and change anything that doesn't suit you.

## Usage ##

### Installation ###

To install this class:

1.	Put `academic-article.cls` in your local texmf folder.
2.	Run `texhash` on that folder.

### Creating Your Document ###

Your document must be compiled with `xelatex`. The basic command that you will enter at the command prompt is this:

		$ xelatex my-document.tex
		
Like most LaTeX documents, you will probably have to compile the document several times so that all the links and references are properly worked out.

### Options ###

Since the class extends the default LaTeX article class, you can use the standard set of options (e.g., page size, font size).

### Fonts ###

This class uses Adobe Caslon Pro as the default font. If you wish to change that, look through the code for the 

		\setmainfont[options]{Adobe Caslon Pro}

command, and change the font name to the _display_ name of the font you want to use, rather than the filename of the font. For example, you might change "Adobe Caslon Pro" to "Times New Roman." The options provided in this class will only work if the font you are using supports those OpenType features.

### Defined Environments and Commands ###

#### Reviewed Book ####

This class provides an environment, `reviewedbook`. This reduces the margins and adds some spacing for typesetting the bibliographic information in a book review.

To use it, add the following to your document:

		\begin{reviewedbook}
			Last, First. \emph{A Great Book Title}. (City: Publisher, 1600).
		\end{reviewedbook}
		
#### New Thought ####

This class defines a command, `newthought`. This command adds something like a section break, except instead of a section header there is a visual break in the text and the first several words of the line are set in small caps. You can see what this looks like in `sample.pdf`.

To use this command, add the following to your document:

	This is a standard pagraph. It probably concludes a point that you've been making, so it's time for a new thought soon.
	
	\newthought{This is the start of a new thought.} This paragraph will have a blank line in front of it, and the words contained in braces will be in small caps.

This `newthought` command is borrowed from [Tufte-LaTeX](http://code.google.com/p/tufte-latex/).

## Sample Documents ##

I've provided two demonstration files, `sample.tex` and `sample.pdf` to demonstrate how to use the package.

`sample.tex` has my personal data, which you could then change to your own information. It also has some commands, such as defining the PDF information and making the author and date lowercase (so that the small caps look right) that I couldn't put into the class definition itself. You'll probably want to keep the `\MakeLowercase` commands as they are.

`sample.pdf` is a one-page sample of what a finished document looks like.


## License ##

(c) Copyright 2011 Lincoln Mullen.

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
 
You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.
