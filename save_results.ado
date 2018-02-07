cap program drop init_results
program define init_results
	args size
	qui: query memory
	capture assert inrange(`size', 1, `r(matsize)')
          if _rc == 9 {
			di as error "Error: matrix size must be between 1 and `r(matsize)'."
			exit
	}
	mat results = J(1,`size',.)
	mat li results
end

cap program drop add_row
program define add_row
	args rowname ttype
	if "`ttype'" == "testparm" {
		matrix new_row = `r(F)', `r(df)', `r(p)'
	}
	else  {
		matrix new_row = `r(chi2)', `r(df)', `r(p)'
	}
	stripchar, s("`rowname'") c("c\.|i\.|_")
	matrix rownames new_row = `r(strip)'
	mat li new_row
	matrix results = results \ new_row
	if "`ttype'" == "testparm" {
		matrix colnames results = "F" "DF" "P-value"
	}
	else {
		matrix colnames results = "Chi2" "DF" "P-value"
	}
end

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
