cap program drop get_results
program define get_results
	pop results 0
	local rc = "||"
	local numrow = rowsof(fixed) - 1
	forvalues i = 1/`numrow' {
		local rc = "`rc'" + "&"
	}
	local rc = "`rc'" + "|"
	matlist fixed, border(all) cspec(| b %25s | %9.3f & %9.0f & %9.3f |) ///
		rspec(`rc')
end
