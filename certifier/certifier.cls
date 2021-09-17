%%%%%%%%%%%%%%%%%%%%
%% Identification %%
%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{certifier}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Preliminary declarations %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\LoadClass[landscape]{article}
\pagenumbering{gobble}
\setlength{\parindent}{0pt}
\usepackage{geometry}
\geometry{tmargin=.5cm, bmargin=.5cm, lmargin=.5cm, rmargin=.5cm}
\RequirePackage{pgffor}
\RequirePackage{graphicx}


%%%%%%%%%%%%%
%% Options %%
%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%
%% More declarations %%
%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\@companylogo}{Company Logo}
\newcommand{\@companyname}{Company Name}
\newcommand{\@companytagline}{Company Tagline}
\newcommand{\@certtitle}{Certificate Title}
\newcommand{\@certdate}{1970-01-01}
\newcommand{\@beforename}{Mr. or Ms. }
\newcommand{\@aftername}{ is now cerified.}
\newcommand{\@certdirector}{Certificate Director}
\newcommand{\@certchairman}{Certificate Chairman}
\newcommand{\companylogo}[1]{\renewcommand{\@companylogo}{#1}}
\newcommand{\companyname}[1]{\renewcommand{\@companyname}{#1}}
\newcommand{\companytagline}[1]{\renewcommand{\@companytagline}{#1}}
\newcommand{\certtitle}[1]{\renewcommand{\@certtitle}{#1}}
\newcommand{\certdate}[1]{\renewcommand{\@certdate}{#1}}
\newcommand{\beforename}[1]{\renewcommand{\@beforename}{#1}}
\newcommand{\aftername}[1]{\renewcommand{\@aftername}{#1}}
\newcommand{\certdirector}[1]{\renewcommand{\@certdirector}{#1}}
\newcommand{\certchairman}[1]{\renewcommand{\@certchairman}{#1}}

\newcommand{\certify}[1]{
    \newpage
    \begin{center}
        \includegraphics[height=2.1cm]{\@companylogo} \\
        \textbf{\@companyname} \\
        {\tiny \@companytagline} \\
        {\huge \textbf{\@certtitle}} \\
        {\Large \@certdate} \\
        {\Large \@beforename \textbf{#1} \@aftername} \\
        {\normalsize \@certdirector \hspace*{\fill} \@certchairman}
    \end{center}
}

\newcommand{\bulkcertify}[1]{\foreach \x in #1 {\certify{\x} \par}}