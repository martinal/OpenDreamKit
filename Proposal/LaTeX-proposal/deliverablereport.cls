\ProvidesClass{odkreport}

% Specific to ODK
\newcommand{\prop@gen@proposalnumber}{676541}
\newcommand{\prop@gen@acronym}{\href{http://opendreamkit.org}{OpenDreamKit}}
\newcommand{\prop@gen@instrument}{H2020-EINFRA-2015-1}
\newcommand{\prop@gen@logo}{../../media/logos/Flag_of_Europe.png}

\LoadClass[a4paper,twoside,12pt]{amsart}
\RequirePackage{hyperref}
\RequirePackage[utf8]{inputenc}
\RequirePackage{ae,aecompl,aeguill}	% pour utiliser << et >>
\RequirePackage[francais]{babel}
\frenchbsetup{og=«, fg=»}
\RequirePackage{times}
\RequirePackage[babel=true,kerning=true]{microtype}
\RequirePackage[left=2.5cm, right=2.5cm, bottom=2.5cm, top=2.5cm]{geometry}
\RequirePackage{graphicx}
\RequirePackage{../../Proposal/LaTeX-proposal/base/pdata}
\input{../../Proposal/final.pdata}

\newcommand{\issue}[1]{\def\@issue{#1}}
\newcommand{\deliverydate}[1]{\def\@deliverydate{#1}}
\newcommand{\duedate}[1]{\def\@duedate{#1}}
\newcommand{\deliverable}[2]{
  \gdef\deliv@label{\csname deliv@#1#2@label\endcsname}
  \gdef\deliv@title{\csname deliv@#1#2@title\endcsname}
  \gdef\deliv@lead{\csname deliv@#1#2@lead\endcsname}
  \def\@title{{Report on \deliv@label{} (lead: \deliv@lead)\\\deliv@title}}%
  \def\shorttitle{Report on \deliv@label}}

\RequirePackage{fancyhdr}
\pagestyle{fancyplain}
%\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0.4pt}

\fancyfoot[L]{\prop@gen@proposalnumber\quad \prop@gen@acronym}
\fancyfoot[C]{}
\fancyfoot[R]{\thepage}

\fancyhead[RE,LO]{\includegraphics[height=2ex]{\prop@gen@logo} \prop@gen@instrument }

\let\oldmaketitle=\maketitle
\renewcommand{\maketitle}{
  \oldmaketitle%
  \centerline{Due on: \@duedate}
  \centerline{Delivered on: \@deliverydate}
  \bigskip
  \bigskip
  Progress on and finalization of this deliverable has been tracked
  publicly on:\\
  \url{https://github.com/OpenDreamKit/OpenDreamKit/issues/\@issue}
  \thispagestyle{fancyplain}
}

\endinput
