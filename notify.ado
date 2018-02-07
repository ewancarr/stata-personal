program notify 
	version 13
	syntax [anything(everything)] [, noNew name(name) *]
	di `anything'
	! /usr/bin/osascript -e 'display notification `anything' with title "Stata"'
end
