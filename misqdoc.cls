\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{misqdoc}[2014/03/01 MISQ Manuscript Stylefile]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[12pt,letterpaper]{article}

% Must have the following two lines at the top of your document
% %!TEX TS-program = xelatex
% %!TEX encoding = UTF-8 Unicode
% Or you must manually choose to compile with XeLaTeX

% These 3 are required to use the Georgia font family
\RequirePackage{xltxtra}
\RequirePackage{fontspec}
\RequirePackage{xunicode}
\RequirePackage{graphicx}
\RequirePackage[labelsep=period,font=bf]{caption}   % Replace caption colon with
                                % period
\RequirePackage[margin=1in]{geometry}
% \RequirePackage[total={7in,9.25in},top=0.75in,paper=letterpaper]{geometry}
\RequirePackage{fancyhdr}
% Gotta have that double space
\RequirePackage[doublespacing]{setspace}
% Adjusting stretch to obtain results similar to MS Word
\setstretch{2.1}

% Get rid of spacing inside lists
\RequirePackage{enumitem}
\setlist{noitemsep}

% For MISQ we need left justified text
\RequirePackage[document]{ragged2e}

\defaultfontfeatures{Scale=MatchLowercase}
\setmainfont[Ligatures={Common,TeX}]{Times New Roman}
% \setromanfont[Numbers=Uppercase]{Georgia}


% Set up a few different font sizes for sections and such
\renewcommand{\normalsize}{\fontsize{12pt}{12pt}\selectfont}
\renewcommand{\Huge}{\fontsize{20pt}{24pt}\selectfont}
\renewcommand{\LARGE}{\fontsize{13pt}{15pt}\selectfont}
\renewcommand{\Large}{\fontsize{12pt}{14pt}\selectfont}
\renewcommand{\large}{\fontsize{11pt}{13pt}\selectfont}
% \setlength{\textwidth}{7in}
% \setlength{\textheight}{9.25in}
\setlength{\parindent}{15pt}
\setlength{\parskip}{0pt}


% These are variables set in the frontmatter of the document
% Not exactly sure if I need this step, but it was in the example I found.
\let\@shorttitle\@empty

\newcommand{\shorttitle}[1]{\gdef\@shorttitle{#1}}

\renewcommand{\maketitle}{%
  \begin{center} %
    {\Huge\bfseries\@title\par}
    {\Large\itshape\@author\par}
  \end{center}
  \thispagestyle{plain}\@thanks
}

% TODO: Figure out citation style. Of course, MISQ doesn't use APA. 

\newcommand{\chapter}{%
  \newpage
  \@startsection
    {section}{1}{0pt}{4pt}%
    {4pt}{\bfseries\LARGE\centering}%
}

\renewcommand{\section}{%
  \@startsection
    {section}{1}{0pt}{4pt}%
    {4pt}{\bfseries\LARGE\centering\MakeUppercase}%
}

\renewcommand{\subsection}{%
  \@startsection
    {subsection}{2}{0pt}{4pt}%
    {4pt}{\bfseries\large\centering}%
}

\renewcommand{\subsubsection}{%
  \@startsection
    {subsubsection}{3}{0pt}{4pt}%
    {4pt}{\bfseries}%
}
\setcounter{secnumdepth}{1}

% Header and footer info
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{\textit{\@shorttitle}}
\fancyfoot[R]{\textit{Manuscript submitted to MISQ -- Confidential Review Copy}\hspace{5mm}\textbf{\thepage}}

% No header on the first page. Only a footer
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyfoot[R]{\textit{Manuscript submitted to MISQ -- Confidential Review Copy}\hspace{5mm}\textbf{\thepage}}
  }

% Get rid of the horizontal rules
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
