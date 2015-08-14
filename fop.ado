program fop
	version 13
	syntax varlist(min=1)
	foreach x of local 0 {
			cap drop `x'
		}
end
