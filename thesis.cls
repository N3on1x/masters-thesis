\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[2023/09/01 v0.1 Thesis class]

\LoadClass[12pt]{report} % [twoside] option can be provided in the .tex file.

\def\ClassName{thesis}

\DeclareKeys{
  lineno.if = thesis@lineno,
  lineno.usage = load,
}
\ProcessKeyOptions


% Line numbering (if enabled)
\ifthesis@lineno
    \RequirePackage[mathlines]{lineno}    
    \renewcommand{\linenumberfont}{\normalfont\footnotesize\color{red}} 
    \AtBeginDocument{\linenumbers}
\fi

\RequirePackage{xcolor}
