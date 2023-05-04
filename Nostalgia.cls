% Author: Windabove

\ProvidesClass{Nostalgia}[Nostalgia Note v1.1]
\NeedsTeXFormat{LaTeX2e}

\LoadClass{article}
\RequirePackage[margin=1in, a4paper]{geometry}

\RequirePackage{unicode-math}
\RequirePackage{fontspec}
\setmathfont{STIX Two Math}
\RequirePackage{newtxtext}

\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{tcolorbox}
\tcbuselibrary{many}

\pagecolor{GreenYellow!20!White!40}

\linespread{1.3}
\setlength{\parskip}{3mm} 
\setlength{\parindent}{2em}

\RequirePackage{titlesec}
\newcommand{\ruleafter}{\rule[2ex]{100mm}{1pt}}
\titleformat{\section}{\normalfont\Large\bfseries\color{Cyan}}{\thesection}{1em}{}[\ruleafter]
\titleformat*{\subsection}{\normalfont\large\bfseries\color{Cyan}}
\titleformat*{\subsubsection}{\normalfont\normalsize\bfseries\color{Cyan}}

\newtcbtheorem[number within=section]{tcbTheorem}{Theorem}{
    enhanced,
    breakable,
    before skip=5mm, after skip=5mm,
    arc=0.8mm, boxrule=1pt,
    colframe=RoyalPurple!55!Aquamarine!100,
    colback=SeaGreen!10!CornflowerBlue!10,
    colbacktitle=RoyalPurple!55!Aquamarine!100,
    fonttitle=\bfseries,
    attach boxed title to top left={yshift=-1pt},
    boxed title style={
        skin=enhancedfirst jigsaw,
        arc=1mm, bottom=0mm, boxrule=0mm
    },
    sharp corners=northwest
}{the}

\newtcbtheorem[number within=section]{tcbLemma}{Lemma}{
    enhanced,
    before skip=5mm, after skip=5mm,
    arc=0.8mm, boxrule=1pt,
    colframe=Purple!100!Peach!40,
    colback=Violet!100!Yellow!10,
    colbacktitle=Purple!100!Peach!40,
    fonttitle=\bfseries,
    attach boxed title to top left={yshift=-1pt},
    boxed title style={
        skin=enhancedfirst jigsaw,
        arc=1mm, bottom=0mm, boxrule=0mm
    },
    sharp corners=northwest
}{lem}

\newtcbtheorem[number within=section]{tcbCorollary}{Corollary}{
    enhanced,
    before skip=5mm, after skip=5mm,
    arc=0.8mm, boxrule=1pt,
    colframe=Tan!50!Red!50,
    colback=Red!70!Yellow!10,
    colbacktitle=Tan!50!Red!50,
    fonttitle=\bfseries,
    attach boxed title to top left={yshift=-1pt},
    boxed title style={
        skin=enhancedfirst jigsaw,
        arc=1mm, bottom=0mm, boxrule=0mm
    },
    sharp corners=northwest
}{lem}

\newtcbtheorem[number within=section]{tcbDefinition}{Definition}{
    enhanced,
    before skip=5mm, after skip=5mm,
    colframe=Bittersweet!100!Yellow!20,
    colback=Goldenrod!50!Dandelion!10,
    coltitle=Sepia!100!YellowOrange!70,
    fonttitle=\bfseries,
    boxrule=1pt
}{def}

\newtcbtheorem[number within=section]{tcbRemark}{Remark}{
    enhanced,
    before skip=5mm, after skip=5mm,
    boxrule=0.4pt,
    colback=Yellow!20!Green!10,
    colframe=Green!40!Black,
    sharp corners,
    drop fuzzy shadow
}{rem}

\RequirePackage{amsthm}
\renewcommand{\proofname}{\textbf{Proof}}
\renewcommand{\qedsymbol}{$\mdblksquare$}

\RequirePackage{xparse}
\NewDocumentEnvironment{theorem}{ O{} O{} }{\begin{tcbTheorem}{#1}{#2}}{\end{tcbTheorem}}
\NewDocumentEnvironment{lemma}{ O{} O{} }{\begin{tcbLemma}{#1}{#2}}{\end{tcbLemma}}
\NewDocumentEnvironment{corollary}{ O{} O{} }{\begin{tcbCorollary}{#1}{#2}}{\end{tcbCorollary}}
\NewDocumentEnvironment{definition}{ O{} O{} }{\begin{tcbDefinition}{#1}{#2}}{\end{tcbDefinition}}
\NewDocumentEnvironment{remark}{ O{} O{} }{\begin{tcbRemark}{#1}{#2}}{\end{tcbRemark}}

\RequirePackage[shortlabels, inline]{enumitem}
\setlist{nolistsep}
\NewDocumentEnvironment{steps}{ O{Step} }{\begin{enumerate}[label=\textbf{#1 \arabic*}]}{\end{enumerate}}

