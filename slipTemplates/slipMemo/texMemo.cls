% This document class provides a simple memo for LaTeX users.
% It is based on article.cls and inherits most of the functionality
% that class.
% 
% Author: Rob Oakes, Copyright 2010.  Released under the LGPL, version 3.
% A copy of the LGPL can be found at http://www.gnu.org/licenses/lgpl.html

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{texMemo}[2010/07/31 - Simple Memo Class, Including Logo]
\RequirePackage{palatino}
\RequirePackage{xcolor}
\usepackage[sfdefault]{FiraSans} 

\definecolor{slipRed}{HTML}{C83737}

% Load the Base Class
\LoadClassWithOptions{article}

% Begin Requirements
\RequirePackage{ifthen}

% Specialized memo Commands (To, From, Subject, Logo, Letterhead Address)

\def\@memoto{\relax}
\newcommand{\memoto}[1]{\gdef\@memoto{#1}}

\def\@memofrom{\relax}
\newcommand{\memofrom}[1]{\gdef\@memofrom{#1}}

\def\@memosubject{\relax}
\newcommand{\memosubject}[1]{\gdef\@memosubject{#1}}

\def\@memodate{\relax}
\newcommand{\memodate}[1]{\gdef\@memodate{#1}}

\def\@memologo{\relax}
\newcommand{\logo}[1]{\gdef\@memologo{\protect #1}}

\def\@letterheadaddress{\relax}
\newcommand{\lhaddress}[1]{\gdef\@letterheadaddress{#1}}

% Custom Document Formatting
\newcommand\decorativeline[1][1pt]{
	\par\noindent%
	{\color[HTML]{808080}
	\rule[0.5ex]{\linewidth}{#1}\par}\vspace{-2em}
}

% Set the Paper Size and margins
\RequirePackage{geometry}
\geometry{margin=1.0in}

% Create the Letterhead and To/From Block

\renewcommand{\maketitle}{\makememotitle}
\newcommand\makememotitle{
\vspace{-1in}
\noindent
\begin{minipage}[t]{\columnwidth}
	% To, From, Subject Block
	\noindent
	\begin{minipage}[t]{.7\textwidth}%
	\raggedright
	\begin{description}
		\ifthenelse{\equal{\@memoto}{\relax}}{}{\item [{\color{slipRed}To:}] \@memoto}
		\ifthenelse{\equal{\@memofrom}{\relax}}{}{\item [{\color{slipRed}From:}] \@memofrom}
		\ifthenelse{\equal{\@memosubject}{\relax}}{}{\item [{\color{slipRed}Subject:}] \@memosubject}
		\ifthenelse{\equal{\@memodate}{\relax}}{}{\item [{\color{slipRed}Date:}] \@memodate}
	\end{description}
    \end{minipage}%
	\begingroup
	\centering
	\ifthenelse{\equal{\@memologo}{\relax}}{}
	{ % Create With Logo
	\noindent
	\hfill
	\begin{minipage}[r]{.25\textwidth}%
	\raggedright
	\vspace{0.2in}
	\@memologo
		%\begin{flushright}
			%\vspace{-0.6in}
			%\@memologo
			%\vspace{0.5in}
		%\par\end{flushright}%
	\end{minipage}%
	}
	\endgroup

\end{minipage}


	\decorativeline\bigskip{}
}