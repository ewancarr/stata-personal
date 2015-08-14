program labelof 
	version 13
	syntax varlist(min=1 max=1)
	qui: loc lab: value label `0'
	label list `lab'
end
