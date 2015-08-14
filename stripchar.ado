cap program drop stripchar
program define stripchar
	syntax, String(string) Char(string)
	while regexm("`string'", "`char'") == 1 {
		local string = regexr("`string'", "`char'", "")
	}
	di "`string'"
end