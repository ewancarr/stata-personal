cap program drop stripchar
program define stripchar, rclass
	/* TODO:
		1. Add type assertions.
	*/
	syntax, String(string) Char(string)
	while regexm("`string'", "`char'") == 1 {
		local string = regexr("`string'", "`char'", "")
	}
	return local strip `string'
end