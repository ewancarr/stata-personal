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
