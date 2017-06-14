%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Medium Length Professional CV - RESUME CLASS FILE
%
% This template has been downloaded from:
% http://www.LaTeXTemplates.com
%
% This class file defines the structure and design of the template. 
%
% Original header:
% Copyright (C) 2010 by Trey Hunner
%
% Copying and distribution of this file, with or without modification,
% are permitted in any medium without royalty provided the copyright
% notice and this notice are preserved. This file is offered as-is,
% without any warranty.
%
% Created by Trey Hunner and modified by www.latextemplates.com
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\ProvidesClass{resume}[2010/07/10 v0.9 Resume class]

\LoadClass[9pt,letterpaper]{article} % Font size and paper type

\usepackage[parfill]{parskip} % Remove paragraph indentation
\usepackage{array} % Required for boldface (\bf and \bfseries) tabular columns
\usepackage{ifthen} % Required for ifthenelse statements

%\usepackage{lastpage}
%\usepackage{fancyhdr}
\pagestyle{empty} 
%\fancyhead{}
%\fancyfoot{}
%\fancyfoot[C]{\small \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 
%\ \ \ \ \ \ \ \ \ \ \ \ \thepage\ of \pageref{LastPage}}
%----------------------------------------------------------------------------------------
%	HEADINGS COMMANDS: Commands for printing name and address
%----------------------------------------------------------------------------------------

\def \name#1{\def\@name{#1}} % Defines the \name command to set name
\def \@name {} % Sets \@name to empty by default


%----------------------------------------------------------------------------------------
%	HEADER SECTION
%----------------------------------------------------------------------------------------


\newenvironment{hSubsection}[3]{ % 4 input arguments - company name, year(s) employed, job title and location
 %{\bf #1} \hfill {#2} % Bold company name and date on the right
 {\raggedright{\MakeUppercase{\namesize\bf \@name}}} \hfill { #1}
 \ifthenelse{\equal{#1}{}}{}{ % If the first argument is not specified, don't print the job title and location line
  \\
  {\raggedright{#2}\hfill} \raggedleft{\em#3} % Italic job title and location
  } %\smallskip
  
  }

%----------------------------------------------------------------------------------------
%	SECTION FORMATTING
%----------------------------------------------------------------------------------------

% Defines the rSection environment for the large sections within the CV
\newenvironment{rSection}[1]{ % 1 input argument - section name
  %\smallskip
  \MakeUppercase{\bf {#1}} % Section title
  \sectionlineskip
  \hrule % Horizontal line
  \begin{list}{}{ % List for each individual item in the section
  \small\setlength{\leftmargin}{1.5em} % Margin within the section
  }
  \item[]
 }{
  \end{list}
}

\newenvironment{lSubsection}{ 
   \begin{list}{$\cdot$}{\leftmargin=0em} % \cdot used for bullets, no indentation
   \itemsep -0.5em \vspace{-0.5em} % Compress items in list together for aesthetics
  }{
  \end{list}
  \vspace{0.2em} % Some space after the list of bullet points
}

\newenvironment{lsubSubsection}{ 
   \begin{list}{$\cdot$}{\leftmargin=1em} % \cdot used for bullets, no indentation
   \itemsep -0.5em \vspace{-0.5em} % Compress items in list together for aesthetics
  }{
  \end{list}
%  \vspace{0.2em} % Some space after the list of bullet points
}

%----------------------------------------------------------------------------------------
%	WORK EXPERIENCE FORMATTING
%----------------------------------------------------------------------------------------

\newenvironment{rSubsection}[4]{ % 4 input arguments - company name, year(s) employed, job title and location
 {\bf{\leftmargin=0em #1}} \hfill {#2} % Bold company name and date on the right
 \ifthenelse{\equal{#3}{}}{}{ % If the third argument is not specified, don't print the job title and location line
  \\
  {\em #3} \hfill {\em #4} % Italic job title and location
  }%\smallskip
  
  \begin{list}{$\cdot$}{\leftmargin=0em} % \cdot used for bullets, no indentation
   \itemsep -0.5em \vspace{-0.5em} % Compress items in list together for aesthetics
  }{
  \end{list}
  \vspace{0.2em} % Some space after the list of bullet points
}

% The below commands define the whitespace after certain things in the document - they can be \smallskip, \medskip or \bigskip
\def\namesize{\Large} % Size of the name at the top of the document
\def\addressskip{\smallskip} % The space between the two address (or phone/email) lines
\def\sectionlineskip{\smallskip} % The space above the horizontal line for each section 
\def\nameskip{\smallskip} % The space after your name at the top
\def\sectionskip{\smallskip} % The space after the heading section
