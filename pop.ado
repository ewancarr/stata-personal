* Program to remove the first row in a Stata matrix
* 2015-08-06

cap program drop pop
program define pop
	args matrix_name printout
	* Save the row/column names
	local rownames_to_restore: rownames `matrix_name'
	local colnames_to_restore: colnames `matrix_name'
	* Remove the first row (in Mata)
	mata: a = st_matrix("`matrix_name'")
	mata: b = a[(2::rows(a)),]
	* Return the new matrix to Stata (named "fixed")
	mata: st_matrix("fixed", b)
	* Remove first 'rowname' item
	tokenize `rownames_to_restore'
	local rownames_to_restore: subinstr local rownames_to_restore "`1'" ""
	mat rownames fixed = `rownames_to_restore'
	mat colnames fixed = `colnames_to_restore'
	if `printout' == 1 {
		mat li fixed
	}
end

