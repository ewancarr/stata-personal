cap program drop sg
program define sg
	qui: graph export "/tmp/stata.eps", replace
	qui: shell convert -density 300 /tmp/stata.eps /tmp/stata.png
	qui: shell xdg-open /tmp/stata.png 
end
