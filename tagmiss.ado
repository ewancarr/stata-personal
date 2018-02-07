cap program drop tagmiss
program define tagmiss
	args varlist
	cap drop items_missing
	qui: egen items_missing = rowmiss(`varlist')
	ta items_missing
end

