# Academic Article LaTeX Class

A [LaTeX][] class that extends the `article` class. This class uses
better fonts, and changes the design of the document. The typography is
inspired by the Cambridge University Press style for books. The sample
document also loads useful packages.

## Author

Lincoln Mullen\
<lincoln@lincolnmullen.com>\
<http://lincolnmullen.com/>\
Twitter: [@lincolnmullen][]

## Caveat

This class is not good about checking if you have the required packages
or fonts. Some of the options are hardcoded in to my personal
information, such as name. Before using the package you should look
through the code and change anything that doesn't suit you.

## Usage

### Installation

To install this class:

1.  Put `academic-article.cls` in your local texmf folder.
2.  Run `texhash` on that folder.

### Options

Since the class extends the default LaTeX article class, you can use the
standard set of options (e.g., page size, font size).

### Metadata

At the beginning of the sample document, there are a series of
definitions of metadata. For example, you will see the lines

        \def\myauthor{Lincoln A. Mullen}
        \def\myaffiliation{Brandeis University}
        \def\mytitle{Title Goes Here}

These definitions of metadata are intended to make it easier for you to
change the information in the document. For example, instead of changing
the e-mail twice in the author field, it is only necessary to change it
in the definition of the metadata at the beginning. This is especially
important since the text of the author and date fields can this way be
lowercased automatically in order to look good in small caps, and also
because the class passes the metadata along to be embedded in the PDF.

### Fonts

This class offers two fonts as an option, Adobe Caslon Pro and Minion
Pro. The fonts can be chosen by passing the `caslon` or `minion` option
to the document class. For example:

        \documentclass[caslon, 11pt]{academic-article}

The class uses Adobe Caslon Pro as the default font if no option is
passed to it.

If you wish to use another font, look through the code for the lines

        \setmainfont[options]{Adobe Caslon Pro}

command, and change the font name to the *display* name of the font you
want to use, rather than the filename of the font. For example, you
might change "Adobe Caslon Pro" to "Times New Roman." The options
provided in this class will only work if the font you are using supports
those OpenType features.

### Defined Environments and Commands

#### Reviewed Book

This class provides an environment, `reviewedbook`. This reduces the
margins and adds some spacing for typesetting the bibliographic
information in a book review.

To use it, add the following to your document:

        \begin{reviewedbook}
            Last, First. \emph{A Great Book Title}. (City: Publisher, 1600).
        \end{reviewedbook}
        

#### New Thought

This class defines a command, `newthought`. This command adds something
like a section break, except instead of a section header there is a
visual break in the text and the first several words of the line are set
in small caps. You can see what this looks like in `sample.pdf`.

To use this command, add the following to your document:

    This is a standard pagraph. It probably concludes a point that
    you've been making, so it's time for a new thought soon.

    \newthought{This is the start of a new thought.} This paragraph will
    have a blank line in front of it, and the words contained in braces
    will be in small caps.

This `newthought` command is borrowed from [Tufte-LaTeX][].

## Sample Documents

I've provided two demonstration files, `sample.tex` and `sample.pdf` to
demonstrate how to use the package.

`sample.tex` has my personal data, which you could then change to your
own information. It also has some commands, such as defining the PDF
information and making the author and date lowercase (so that the small
caps look right) that I couldn't put into the class definition itself.
You'll probably want to keep the `\MakeLowercase` commands as they are.

`sample.pdf` is a one-page sample of what a finished document looks
like.

## License

(c) Copyright 2011 Lincoln Mullen.

This program is free software: you can redistribute it and/or modify it
under the terms of the GNU General Public License as published by the
Free Software Foundation, either version 3 of the License, or (at your
option) any later version.

This program is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
Public License for more details.

You should have received a copy of the GNU General Public License along
with this program. If not, see <http://www.gnu.org/licenses/>.

  [LaTeX]: http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=xetex
  [@lincolnmullen]: http://twitter.com/lincolnmullen
  [Tufte-LaTeX]: http://code.google.com/p/tufte-latex/
