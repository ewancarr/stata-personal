*! version 1.0.0 February 18, 2010 @ 08:48:04
*! makes a comma-separated varlist
program define vcomma, rclass
version 11
syntax [varlist]
local varlist : subinstr local varlist " " ",", all
return local varlist "`varlist ́"
end
