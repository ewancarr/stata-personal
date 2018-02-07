program logout
	version 13
	syntax namelist(min=1 max=1)
	cap log close
	log using "~/Desktop/logout.txt", text replace
	quietly lookfor `1'
	cap log close
	cap cd "~/Desktop/"
	! open -a "Sublime Text" "logout.txt"
end
