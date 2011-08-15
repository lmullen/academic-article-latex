# Academic Article XeLaTeX Class #

A [XeLaTeX](http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=xetex) class that extends the article class. This class uses better fonts, redefines the \maketitle command to format the title, loads some packages for general use. The typography is inspired by the Cambridge University Press style for books.

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

### Options ###

Since the class extends the default LaTeX article class, you can use the standard set of options (e.g., page size, font size).

### Fonts ###

This class uses Adobe Caslon Pro as the default font. If you wish to change that, look through the code for the 

		\setmainfont[options]{Adobe Caslon Pro}

command, and change the font name to the _display_ name of the font you want to use, rather than the filename of the font. For example, you might change "Adobe Caslon Pro" to "Times New Roman." The options provided in this class will only work if the font you are using supports those OpenType features.

## Sample Documents ##

I've provided two demonstration files, `sample.tex` and `sample.pdf` to demonstrate how to use the package.

`sample.tex` has my personal data, which you could then change to your own information. It also has some commands, such as defining the PDF information and making the author and date lowercase (so that the small caps look right) that I couldn't put into the class definition itself. You'll probably want to keep the `\MakeLowercase` commands as they are.

`sample.pdf` is a one-page sample of what a finished document looks like.


## License ##

(c) Copyright 2011 Lincoln Mullen.

This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
 
You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.
