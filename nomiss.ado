program nomiss 
	version 13
	syntax varlist(min=1)
	cap drop anymiss
	cap drop nomiss
	egen anymiss = rowmiss(`0')
	gen nomiss = 0
	replace nomiss = 1 if anymiss == 0
	ta nomiss
end
