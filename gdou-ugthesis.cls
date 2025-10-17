
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gdou-ugthesis}[2025/10/17 v1.0 GDOU UG Thesis]
\LoadClass[12pt,oneside,openany]{ctexrep}
\RequirePackage{geometry}\geometry{a4paper,margin=2.5cm}
\RequirePackage{fontspec,setspace,titlesec,fancyhdr,tocloft,graphicx,caption,subcaption,booktabs,siunitx,hyperref,cleveref,enumitem,amssymb,amsmath,amsfonts,bm,listings,tabularx,longtable,csquotes}
\hypersetup{hidelinks}

\setCJKmainfont{SimSun}[BoldFont=SimHei]
\setCJKsansfont{SimHei}
\newfontfamily\FZYaoti{FZYaoti}{}
\newif\ifhasyaoti \IfFontExistsTF{FZYaoti}{\hasyaotitrue}{\hasyaotifalse}
\setmainfont{Times New Roman}\setsansfont{Arial}\setmonofont{Courier New}

\newlength{\FixedTwenty}\setlength{\FixedTwenty}{20pt}
\setlength{\parskip}{0pt}\setlength{\parindent}{2em}
\newenvironment{fixedtwenty}{\begingroup\setlength{\baselineskip}{20pt}}{\par\endgroup}

\pagestyle{fancy}\fancyhf{} \fancyhead[LE,RO]{\thepage} \fancyhead[LO]{\nouppercase{\rightmark}} \fancyhead[RE]{\nouppercase{\leftmark}}
\ctexset{
  section={format+={\heiti\zihao{-4}},beforeskip=8pt,afterskip=6pt,name={第,章},number=\chinese{section}},
  subsection={format+={\heiti\zihao{-4}},beforeskip=6pt,afterskip=6pt},
  subsubsection={format+={\heiti\zihao{-4}},beforeskip=6pt,afterskip=6pt}
}
\AtBeginDocument{\setlength{\baselineskip}{20pt}}

\renewcommand{\contentsname}{\heiti\bfseries\zihao{3}目\ \ 录}
\renewcommand{\cfttoctitlefont}{\heiti\bfseries\zihao{3}}
\renewcommand{\cftaftertoctitle}{\hfill}
\setlength{\cftbeforetoctitleskip}{0pt}\setlength{\cftaftertoctitleskip}{12pt}

\RequirePackage[backend=biber,style=gb7714-2015,gbnamefmt=lowercase]{biblatex}

\newcommand{\TitleCN}{}\newcommand{\TitleEN}{}\newcommand{\AuthorCN}{}\newcommand{\StudentID}{}\newcommand{\College}{}\newcommand{\Major}{}\newcommand{\ClassInfo}{}\newcommand{\Degree}{工学学士}\newcommand{\Advisor}{}\newcommand{\AdvisorTitle}{}\newcommand{\CoAdvisor}{}\newcommand{\CoAdvisorTitle}{}\newcommand{\DefenseDate}{}

\newcommand{\thesissetup}[1]{\begingroup\edef\temp{#1}\endgroup\thesissetupinternal#1\relax}
\def\thesissetupinternal#1=#2;{\def\key{#1}\def\val{#2}\ifx\key\empty\relax\else\csname set\key\endcsname{\val}\expandafter\thesissetupinternal\fi}
\newcommand{\settitleCN}[1]{\renewcommand{\TitleCN}{#1}}
\newcommand{\settitleEN}[1]{\renewcommand{\TitleEN}{#1}}
\newcommand{\setauthorCN}[1]{\renewcommand{\AuthorCN}{#1}}
\newcommand{\setstudentID}[1]{\renewcommand{\StudentID}{#1}}
\newcommand{\setcollege}[1]{\renewcommand{\College}{#1}}
\newcommand{\setmajor}[1]{\renewcommand{\Major}{#1}}
\newcommand{\setclassinfo}[1]{\renewcommand{\ClassInfo}{#1}}
\newcommand{\setdegree}[1]{\renewcommand{\Degree}{#1}}
\newcommand{\setadvisor}[1]{\renewcommand{\Advisor}{#1}}
\newcommand{\setadvisortitle}[1]{\renewcommand{\AdvisorTitle}{#1}}
\newcommand{\setcoadvisor}[1]{\renewcommand{\CoAdvisor}{#1}}
\newcommand{\setcoadvisortitle}[1]{\renewcommand{\CoAdvisorTitle}{#1}}
\newcommand{\setdefensedate}[1]{\renewcommand{\DefenseDate}{#1}}

\newcommand{\makethesistitlepage}{\begin{titlepage}\centering
  {\zihao{-2}\ifhasyaoti\FZYaoti\else\heiti\fi \TitleCN\par}\vspace{1.2cm}
  {\zihao{-3}\bfseries \MakeUppercase{\TitleEN}\par}\vspace{1.5cm}
  \begin{tabular}{r@{\hspace{1em}}l}
    学生姓名： & {\AuthorCN} \\[0.4em]
    学\hspace{0.95em}号： & {\StudentID} \\[0.4em]
    所在学院： & {\College} \\[0.4em]
    班\hspace{2.0em}级： & {\ClassInfo} \\[0.4em]
    所在专业： & {\Major} \\[0.4em]
    申请学位： & {\Degree} \\[0.4em]
    指导教师： & {\Advisor} \\[0.4em]
    职\hspace{2.0em}称： & {\AdvisorTitle} \\[0.4em]
    副指导教师： & {\CoAdvisor} \\[0.4em]
    职\hspace{2.0em}称： & {\CoAdvisorTitle} \\[0.4em]
    答辩时间： & {\DefenseDate} \\
  \end{tabular}\vfill\end{titlepage}}

\newcommand{\ChineseAbstract}[2]{\chapter*{\heiti\zihao{-3}设计总说明}\begin{fixedtwenty}\zihao{-5}#1\end{fixedtwenty}\par\medskip{\heiti\zihao{-5}关键字：}\zihao{-5} #2\clearpage}
\newcommand{\EnglishAbstract}[2]{\chapter*{introduction}\begin{fixedtwenty}\zihao{-5}\rmfamily #1\end{fixedtwenty}\par\medskip\zihao{-5}\rmfamily \textbf{Keywords:} #2\clearpage}

\renewcommand{\chaptermark}[1]{\markboth{#1}{}}\renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}}
\setlist{nosep,leftmargin=2em}
\lstset{basicstyle=\ttfamily\zihao{-5},frame=single,numbers=left,numberstyle=\tiny,breaklines=true,tabsize=2}
\endinput
