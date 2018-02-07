{smcl}
{* *! version 0.0.1  06aug2015}{...}
{findalias asfradohelp}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "[R] help" "help help"}{...}
{viewerjumpto "Syntax" "examplehelpfile##syntax"}{...}
{viewerjumpto "Description" "examplehelpfile##description"}{...}
{viewerjumpto "Options" "examplehelpfile##options"}{...}
{viewerjumpto "Remarks" "examplehelpfile##remarks"}{...}
{viewerjumpto "Examples" "examplehelpfile##examples"}{...}
{title:Title}

{phang}
{bf:pop} {hline 2} Remove the first row from a Stata matrix


{marker syntax}{...}
{title:Syntax}

{p 8 17 2}
{cmdab:pop:}
A


{marker description}{...}
{title:Description}

{pstd}
{cmd:pop} removes uses Mata to remove first row from a Stata matrix, returning a new matrix {it:fixed}. Column and row names are copied {it:A} to {it:fixed}.


{marker options}{...}
{title:Options}

{phang}None.


{marker examples}{...}
{title:Examples}

{phang}{cmd:. pop results}{p_end}

