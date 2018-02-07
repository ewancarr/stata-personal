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
