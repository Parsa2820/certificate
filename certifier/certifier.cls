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
\RequirePackage{xcolor}
\RequirePackage{graphicx}

%%%%%%%%%%%%%
%% Options %%
%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%
%% More declarations %%
%%%%%%%%%%%%%%%%%%%%%%%

%% Defualt values
\newcommand{\@companylogo}{Company Logo}
%\newcommand{\@companytagline}{ }

\newcommand{\companylogo}[1]{\renewcommand{\@companylogo}{#1}}

\newcommand{\certify}[3]{
    \begin{figure}
        \centering
        \includegraphics[width=0.4\textwidth]{\@companylogo}
    \end{figure}
    #2#1#3
}

\newcommand{\bulkcertify}[3]{\foreach \x in #1 {\certify{\x}{#2}{#3} \newpage}}